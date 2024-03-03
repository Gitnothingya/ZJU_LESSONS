* GPIO使用
  * 4 Din 3 CS 2 CLK

内核源码下载

https://github.com/raspberrypi/linux

```shell
# ubuntu docker 安装交叉编译器
sudo apt-get update
sudo apt-get install gcc-arm-linux-gnueabihf

# 编译过程可能的依赖项
sudo apt install git bc bison flex libssl-dev make libc6-dev libncurses5-dev


# 配置文件
sudo modprobe configs # 在树莓派环境运行获取配置文件 /proc/config.gz
# 直接将文件解压并命名 .config 
# 替换前最好运行一遍  make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- <target_defconfig>即使用官方标准配置一遍，否则可能有文件缺失
zcat config.gz > .config
KERNEL=kernel7
# 根目录编译内核镜像和模块,   自动使用.config配置文件
# 必须要编译一遍内核模块，此过程会自动生成scripts/module.lds，后面编译自己写的模块要用
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules

# 准备编译内核模块
# 根目录运行，不知道干嘛，反正有用
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- oldconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- prepare
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- scripts

# 单独编译模块，只需要源文件和makefile， 需要到 该模块 根目录下
# 注意make命令选项，默认make 会使用x86_64 的编译器
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-


# bcm2835，操作引脚
cat /proc/cpuinfo #打印的信息里面，包含 Hardware: BCM2835 硬件架构


```

~~glibc 版本过旧 ，不知道为什么一个晚上过去就不能运行了，可能虚拟机本机又更新了什么？~~重新在虚拟机安装firefly docker镜像，使用低版本交叉编译器解决
源码下载：http://ftp.gnu.org/pub/gnu/libc/

安装： [(52条消息) Linux系统glibc（GNU C Library）从零安装步骤_glibc安装_kfd666的博客-CSDN博客](https://blog.csdn.net/drutgdh/article/details/122852004)



[(52条消息) Raspberry 3B+：安装bcm2835库_bcm2835-1.60.tar.gz_「已注销」的博客-CSDN博客](https://blog.csdn.net/quixon/article/details/101169805)
