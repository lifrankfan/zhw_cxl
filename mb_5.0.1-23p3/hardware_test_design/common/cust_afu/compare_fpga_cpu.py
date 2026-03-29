#!/usr/bin/env python3
"""
Compare ZFP decompression latency: FPGA (CXL Agilex) vs CPU.
Reads profiling logs from both platforms and produces a side-by-side report.
"""
import re
import sys
import os

# ── Paths ──────────────────────────────────────────────────────────────
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
FPGA_LOG = os.path.join(SCRIPT_DIR, "fpga_zfp_latency.log")
CPU_LOG  = "/fast-lab-share/lifan3/ZFP_Dot_Product/profile/latency_breakdown_w_enns/cpu_zfp_latency.log"
OUT_FILE = os.path.join(SCRIPT_DIR, "fpga_vs_cpu_report.md")

# ── Clock frequencies ──────────────────────────────────────────────────
# FPGA: Quartus STA coreclkout_hip = 2.5ns period = 400 MHz
# CPU:  /proc/cpuinfo as captured by zfp_breakdown
FPGA_CLK_MHZ = 400.0
CPU_CLK_MHZ  = 1500.0  # default, overridden by log if available

# ── FPGA per-stage algorithm work (from HLS design analysis) ──────────
# These represent the actual compute cycles each stage needs per block,
# independent of pipeline depth. Derived from the ZHW HLS source:
#   Decode: 32 bitplane iterations (II=1) + 9 cycles header/overhead = 41
#   U2I:    Combinatorial negabinary XOR-subtract = 1
#   Cast:   4-stage inverse lifting butterfly + 2-stage exponent = 6
FPGA_ALGO_DECODE = 41
FPGA_ALGO_U2I    = 1
FPGA_ALGO_CAST   = 6
FPGA_ALGO_TOTAL  = FPGA_ALGO_DECODE + FPGA_ALGO_U2I + FPGA_ALGO_CAST  # 48


def parse_fpga_log(path):
    """Parse the FPGA latency log for per-stage throughput and pipeline depth."""
    data = {}
    with open(path) as f:
        text = f.read()

    m = re.search(r'Total AXI cycles:\s+(\d+)', text)
    if m: data['overall_cycles'] = int(m.group(1))

    m = re.search(r'Throughput:\s+(\d+)\s+cycles/block', text)
    if m: data['overall_thru'] = int(m.group(1))

    # Per-stage throughput (inter-departure, all equal to bottleneck in pipeline)
    thru = re.findall(r'Per-Stage Throughput.*?\n(.*?)(?:\n#\s*\n|\n# Per-Stage Pipeline)', text, re.DOTALL)
    if thru:
        block = thru[0]
        m = re.search(r'Decode:\s+(\d+)\s+cycles/block', block)
        if m: data['decode_thru'] = int(m.group(1))
        m = re.search(r'Negabinary->signed:\s+(\d+)\s+cycles/block', block)
        if m: data['u2i_thru'] = int(m.group(1))
        m = re.search(r'Int->float cast:\s+(\d+)\s+cycles/block', block)
        if m: data['cast_thru'] = int(m.group(1))

    # Per-stage pipeline depth
    depth = re.findall(r'Per-Stage Pipeline Depth.*?\n(.*?)(?:\n# =)', text, re.DOTALL)
    if depth:
        block = depth[0]
        m = re.search(r'Decode:\s+(\d+)\s+cycles', block)
        if m: data['decode_depth'] = int(m.group(1))
        m = re.search(r'Negabinary->signed:\s+(\d+)\s+cycles', block)
        if m: data['u2i_depth'] = int(m.group(1))
        m = re.search(r'Int->float cast:\s+(\d+)\s+cycles', block)
        if m: data['cast_depth'] = int(m.group(1))
        m = re.search(r'Total pipeline:\s+(\d+)\s+cycles', block)
        if m: data['total_depth'] = int(m.group(1))

    m = re.search(r'Blocks:\s+(\d+)', text)
    if m: data['blocks'] = int(m.group(1))
    m = re.search(r'Vectors:\s+(\d+)', text)
    if m: data['vectors'] = int(m.group(1))

    return data


def parse_cpu_log(path):
    """Parse the CPU latency log for per-stage breakdown."""
    data = {}
    with open(path) as f:
        text = f.read()

    m = re.search(r'CPU Freq:\s+([\d.]+)\s+MHz', text)
    if m: data['cpu_mhz'] = float(m.group(1))
    m = re.search(r'Vectors:\s+(\d+)', text)
    if m: data['vectors'] = int(m.group(1))

    cyc = re.findall(r'Per-block breakdown \(cycles.*?\n(.*?)(?:\n=)', text, re.DOTALL)
    if cyc:
        block = cyc[0]
        m = re.search(r'Bit-plane decode:\s+([\d.]+)\s+cycles', block)
        if m: data['decode_cyc'] = float(m.group(1))
        m = re.search(r'Negabinary->signed:\s+([\d.]+)\s+cycles', block)
        if m: data['u2i_cyc'] = float(m.group(1))
        m = re.search(r'Int->float cast:\s+([\d.]+)\s+cycles', block)
        if m: data['cast_cyc'] = float(m.group(1))
        m = re.search(r'Total:\s+([\d.]+)\s+cycles', block)
        if m: data['total_cyc'] = float(m.group(1))

    m = re.search(r'avg:\s+([\d.]+),\s+min:\s+([\d.]+),\s+max:\s+([\d.]+)', text)
    if m:
        data['avg_ms'] = float(m.group(1))
        data['min_ms'] = float(m.group(2))
        data['max_ms'] = float(m.group(3))

    return data


def cyc_to_ns(cycles, clk_mhz):
    return cycles / clk_mhz * 1000.0


def build_report(fpga, cpu):
    cpu_mhz = cpu.get('cpu_mhz', CPU_CLK_MHZ)
    fpga_mhz = FPGA_CLK_MHZ

    lines = []
    def p(s=""): lines.append(s)

    p("# ZFP Decompression: FPGA vs CPU Comparison")
    p()
    p("## Configuration")
    p(f"| Parameter | FPGA | CPU |")
    p(f"|-----------|------|-----|")
    p(f"| Clock | {fpga_mhz:.0f} MHz | {cpu_mhz:.0f} MHz |")
    p(f"| Platform | Intel Agilex CXL Type-2 | x86 Server |")
    p(f"| Vectors profiled | {fpga.get('vectors', '?')} | {cpu.get('vectors', '?')} |")
    p(f"| Bits/value | 8 | 8 |")
    p(f"| Block size | 4 values | 4 values |")
    p()

    fpga_overall_thru = fpga.get('overall_thru')
    cpu_total_cyc = cpu.get('total_cyc')

    # ── Section 1: Per-stage algorithm work comparison ──
    p("## Per-Stage Algorithm Work Comparison")
    p()
    p("CPU stages are sequential (times sum to total). FPGA stages overlap in a")
    p("pipeline, so per-stage algorithm cycles represent actual compute work per block.")
    p()
    p("| Stage | CPU cyc | CPU ns | FPGA cyc | FPGA ns | Speedup |")
    p("|-------|---------|--------|----------|---------|---------|")

    stages = [
        ("Bit-plane decode",   FPGA_ALGO_DECODE, cpu.get('decode_cyc')),
        ("Negabinary->signed", FPGA_ALGO_U2I,    cpu.get('u2i_cyc')),
        ("Int->float cast",    FPGA_ALGO_CAST,   cpu.get('cast_cyc')),
    ]
    for name, f_cyc, c_cyc in stages:
        if c_cyc is not None:
            f_ns = cyc_to_ns(f_cyc, fpga_mhz)
            c_ns = cyc_to_ns(c_cyc, cpu_mhz)
            speedup = c_ns / f_ns if f_ns > 0 else float('inf')
            p(f"| {name} | {c_cyc:.1f} | {c_ns:.1f} | {f_cyc} | {f_ns:.1f} | {speedup:.2f}x |")

    if cpu_total_cyc:
        f_ns = cyc_to_ns(FPGA_ALGO_TOTAL, fpga_mhz)
        c_ns = cyc_to_ns(cpu_total_cyc, cpu_mhz)
        speedup = c_ns / f_ns
        p(f"| **Sum of stages** | **{cpu_total_cyc:.1f}** | **{c_ns:.1f}** | **{FPGA_ALGO_TOTAL}** | **{f_ns:.1f}** | **{speedup:.2f}x** |")
    p()

    # ── Section 2: Pipeline throughput comparison ──
    p("## Overall Pipeline Throughput")
    p()
    p("FPGA throughput = bottleneck stage (decode) since stages overlap.")
    p("CPU throughput = sum of all stages (sequential execution).")
    p()
    if fpga_overall_thru and cpu_total_cyc:
        f_ns = cyc_to_ns(fpga_overall_thru, fpga_mhz)
        c_ns = cyc_to_ns(cpu_total_cyc, cpu_mhz)
        speedup = c_ns / f_ns
        p(f"| Metric | CPU | FPGA | Speedup |")
        p(f"|--------|-----|------|---------|")
        p(f"| Throughput | {cpu_total_cyc:.1f} cyc = {c_ns:.1f} ns/block | {fpga_overall_thru} cyc = {f_ns:.1f} ns/block | **{speedup:.2f}x** |")
        p()

        # Measured inter-departure confirmation
        p("Measured per-stage inter-departure intervals (all equal to bottleneck):")
        p(f"  Decode: {fpga.get('decode_thru', '?')} cyc/block, "
          f"U2I: {fpga.get('u2i_thru', '?')} cyc/block, "
          f"Cast: {fpga.get('cast_thru', '?')} cyc/block")
        p()

    # ── Section 3: First-block latency ──
    p("## First-Block Latency (Pipeline Fill)")
    p()
    total_depth = fpga.get('total_depth')
    if total_depth and cpu_total_cyc:
        fpga_first_ns = cyc_to_ns(total_depth, fpga_mhz)
        cpu_first_ns = cyc_to_ns(cpu_total_cyc, cpu_mhz)
        p(f"| Metric | CPU | FPGA |")
        p(f"|--------|-----|------|")
        p(f"| First-block latency | {cpu_total_cyc:.1f} cyc = {cpu_first_ns:.1f} ns | {total_depth} cyc = {fpga_first_ns:.1f} ns |")
        if cpu_first_ns < fpga_first_ns:
            p(f"| Winner | **CPU** ({fpga_first_ns/cpu_first_ns:.1f}x faster) | |")
        else:
            p(f"| Winner | | **FPGA** ({cpu_first_ns/fpga_first_ns:.1f}x faster) |")
        p()
        p(f"FPGA pipeline depth breakdown: decode={fpga.get('decode_depth','?')}, "
          f"u2i={fpga.get('u2i_depth','?')}, cast={fpga.get('cast_depth','?')} cycles")
        p()

    # ── Section 4: Break-even ──
    if fpga_overall_thru and total_depth and cpu_total_cyc:
        p("## Break-Even Analysis")
        p()
        fpga_rate = fpga_overall_thru / fpga_mhz  # ns per block (steady-state)
        cpu_rate  = cpu_total_cyc / cpu_mhz        # ns per block
        fpga_fixed = (total_depth - fpga_overall_thru) / fpga_mhz  # fill overhead ns

        if fpga_rate < cpu_rate:
            breakeven = fpga_fixed / (cpu_rate - fpga_rate)
            n = int(breakeven) + 1
            p(f"FPGA becomes faster than CPU after **{n} blocks** "
              f"({n*4} values, ~{max(1, n//32)} vectors).")
            p()
            p(f"- FPGA: {total_depth} cycles fill + {fpga_overall_thru} cycles/block steady-state @ {fpga_mhz:.0f} MHz")
            p(f"- CPU:  {cpu_total_cyc:.1f} cycles/block @ {cpu_mhz:.0f} MHz")
            p(f"- Steady-state rate: FPGA {fpga_rate:.2f} ns/block vs CPU {cpu_rate:.2f} ns/block")
        else:
            p("CPU is faster per-block in steady state; FPGA does not overtake for throughput.")
        p()

    # ── Section 5: Effective throughput ──
    p("## Effective Throughput")
    p()
    if fpga_overall_thru and cpu_total_cyc:
        fpga_bps = fpga_mhz * 1e6 / fpga_overall_thru
        cpu_bps  = cpu_mhz * 1e6 / cpu_total_cyc
        fpga_mbps = fpga_bps * 4 * 4 / 1e6  # 4 values/block * 4 bytes/value
        cpu_mbps  = cpu_bps * 4 * 4 / 1e6
        p(f"| Metric | CPU | FPGA | Ratio |")
        p(f"|--------|-----|------|-------|")
        p(f"| Blocks/sec | {cpu_bps/1e6:.2f} M | {fpga_bps/1e6:.2f} M | {fpga_bps/cpu_bps:.2f}x |")
        p(f"| Decompressed data rate | {cpu_mbps:.1f} MB/s | {fpga_mbps:.1f} MB/s | {fpga_mbps/cpu_mbps:.2f}x |")
        p()

    # ── Notes ──
    p("## Notes")
    p()
    p("- **CPU stages are sequential**: each block passes through decode, then u2i, then cast one at a time.")
    p("  Per-stage times sum to the total (220.9 = 135.9 + 40.7 + 44.3).")
    p("- **FPGA stages are pipelined**: while block N is in the cast stage, block N+1 is in u2i,")
    p("  and block N+2 is in decode. Overall throughput = bottleneck stage = decode (41 cycles).")
    p("- FPGA algorithm work per block (41+1+6 = 48 cycles) is less than the pipeline depth (526 cycles)")
    p("  because HLS generates deeply pipelined datapaths with many register stages per algorithm cycle.")
    p(f"- FPGA clock: Quartus STA `coreclkout_hip` = {fpga_mhz:.0f} MHz (2.5 ns period).")
    p(f"- CPU clock: `/proc/cpuinfo` = {cpu_mhz:.0f} MHz (may vary with turbo/frequency scaling).")
    p("- CPU profiled with 20 averaged runs; FPGA is cycle-accurate RTL simulation (100 SIFT vectors).")

    return "\n".join(lines)


def main():
    fpga_log = sys.argv[1] if len(sys.argv) > 1 else FPGA_LOG
    cpu_log  = sys.argv[2] if len(sys.argv) > 2 else CPU_LOG

    print(f"Reading FPGA log: {fpga_log}")
    print(f"Reading CPU log:  {cpu_log}")
    print()

    fpga = parse_fpga_log(fpga_log)
    cpu  = parse_cpu_log(cpu_log)

    if not fpga:
        print("ERROR: Could not parse FPGA log. Run simulation first to generate updated log.")
        sys.exit(1)
    if not cpu:
        print("ERROR: Could not parse CPU log.")
        sys.exit(1)

    report = build_report(fpga, cpu)
    print(report)

    out = sys.argv[3] if len(sys.argv) > 3 else OUT_FILE
    with open(out, 'w') as f:
        f.write(report + "\n")
    print(f"\nReport saved to: {out}")


if __name__ == "__main__":
    main()
