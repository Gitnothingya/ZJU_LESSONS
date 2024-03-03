ifneq ($(KERNELRELEASE),)
		obj-m := ledmod.o
else
		KERNELDIR ?= /home/firefly/host/EBD/linux
		PWD := $(shell pwd)
default:
		$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:
		$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
endif