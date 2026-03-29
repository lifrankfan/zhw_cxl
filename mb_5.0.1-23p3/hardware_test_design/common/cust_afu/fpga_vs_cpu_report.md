# ZFP Decompression: FPGA vs CPU Comparison

## Configuration
| Parameter | FPGA | CPU |
|-----------|------|-----|
| Clock | 400 MHz | 1500 MHz |
| Platform | Intel Agilex CXL Type-2 | x86 Server |
| Vectors profiled | 100 | 1000000 |
| Bits/value | 8 | 8 |
| Block size | 4 values | 4 values |

## Per-Stage Algorithm Work Comparison

CPU stages are sequential (times sum to total). FPGA stages overlap in a
pipeline, so per-stage algorithm cycles represent actual compute work per block.

| Stage | CPU cyc | CPU ns | FPGA cyc | FPGA ns | Speedup |
|-------|---------|--------|----------|---------|---------|
| Bit-plane decode | 135.9 | 90.6 | 41 | 102.5 | 0.88x |
| Negabinary->signed | 40.7 | 27.1 | 1 | 2.5 | 10.85x |
| Int->float cast | 44.3 | 29.5 | 6 | 15.0 | 1.97x |
| **Sum of stages** | **220.9** | **147.3** | **48** | **120.0** | **1.23x** |

## Overall Pipeline Throughput

FPGA throughput = bottleneck stage (decode) since stages overlap.
CPU throughput = sum of all stages (sequential execution).

| Metric | CPU | FPGA | Speedup |
|--------|-----|------|---------|
| Throughput | 220.9 cyc = 147.3 ns/block | 41 cyc = 102.5 ns/block | **1.44x** |

Measured per-stage inter-departure intervals (all equal to bottleneck):
  Decode: 41 cyc/block, U2I: 41 cyc/block, Cast: 41 cyc/block

## First-Block Latency (Pipeline Fill)

| Metric | CPU | FPGA |
|--------|-----|------|
| First-block latency | 220.9 cyc = 147.3 ns | 526 cyc = 1315.0 ns |
| Winner | **CPU** (8.9x faster) | |

FPGA pipeline depth breakdown: decode=448, u2i=39, cast=39 cycles

## Break-Even Analysis

FPGA becomes faster than CPU after **28 blocks** (112 values, ~1 vectors).

- FPGA: 526 cycles fill + 41 cycles/block steady-state @ 400 MHz
- CPU:  220.9 cycles/block @ 1500 MHz
- Steady-state rate: FPGA 0.10 ns/block vs CPU 0.15 ns/block

## Effective Throughput

| Metric | CPU | FPGA | Ratio |
|--------|-----|------|-------|
| Blocks/sec | 6.79 M | 9.76 M | 1.44x |
| Decompressed data rate | 108.6 MB/s | 156.1 MB/s | 1.44x |

## Notes

- **CPU stages are sequential**: each block passes through decode, then u2i, then cast one at a time.
  Per-stage times sum to the total (220.9 = 135.9 + 40.7 + 44.3).
- **FPGA stages are pipelined**: while block N is in the cast stage, block N+1 is in u2i,
  and block N+2 is in decode. Overall throughput = bottleneck stage = decode (41 cycles).
- FPGA algorithm work per block (41+1+6 = 48 cycles) is less than the pipeline depth (526 cycles)
  because HLS generates deeply pipelined datapaths with many register stages per algorithm cycle.
- FPGA clock: Quartus STA `coreclkout_hip` = 400 MHz (2.5 ns period).
- CPU clock: `/proc/cpuinfo` = 1500 MHz (may vary with turbo/frequency scaling).
- CPU profiled with 20 averaged runs; FPGA is cycle-accurate RTL simulation (100 SIFT vectors).
