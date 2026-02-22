# Specify the name of the output module (nvme_test.ko)
obj-m := nvme_test.o

# Associate the output object (nvme_test.o) with the source file (main.c and cxl_func.c)
nvme_test-objs := main.o cxl_func.o

# Compiler flags for AVX-512
ccflags-y += -mavx512f -mavx512bw -mavx512dq -mavx512vl

# Path to your kernel source
# KDIR := /lib/modules/$(shell uname -r)/build
# Use generic headers since the running kernel build dir is inaccessible
KDIR := /usr/src/linux-headers-6.11.0-25-generic

# Path to external Module.symvers (adjust this path as needed)
# KBUILD_EXTRA_SYMBOLS := /fast-lab-share/yangz15/emr1_back/linux-6.5.10/drivers/nvme/host/my_nvme/Module.symvers

# Build the kernel module and host app
all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	g++ -o zfp_host zfp_host.cpp -std=c++11 -pthread

# Clean the build files
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -f zfp_host
