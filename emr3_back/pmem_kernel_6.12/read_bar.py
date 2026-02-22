
import mmap
import os
import sys

def read_mem(address, size=4):
    fd = os.open("/dev/mem", os.O_RDWR | os.O_SYNC)
    # Align to page size
    page_size = os.sysconf("SC_PAGE_SIZE")
    offset = address % page_size
    base = address - offset
    
    # Map enough pages
    mm = mmap.mmap(fd, size + offset, mmap.MAP_SHARED, mmap.PROT_READ | mmap.PROT_WRITE, offset=base)
    
    # Jump to offset
    mm.seek(offset)
    
    # Read data
    data = mm.read(size)
    
    # Print as hex
    print(f"Read from 0x{address:x}: {data.hex()}")
    
    mm.close()
    os.close(fd)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        addr = int(sys.argv[1], 16)
        read_mem(addr)
    else:
        print("Usage: python3 read_mem.py <hex_addr>")
