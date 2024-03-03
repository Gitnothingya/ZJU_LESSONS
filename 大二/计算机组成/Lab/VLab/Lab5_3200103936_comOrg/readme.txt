在此作统一说明，就不在各个工程里说明了

版本说明：Vivado 2017.4

如何产生.bit文件：点击左边栏PROGRAM AND DEBUG下的Generate Bitstream按钮即可，bit文件一般位于.runs文件夹下的impl文件夹中。Top.bit为流水线CPU的bit流

工程说明：
PipelineCPU为流水线CPU完整模块，PipelineCPU\PipelineCPU.srcs\sources_1\imports\Materials中包含用于测试的指令内存文件imem_data1.mem，以及其汇编代码test_pipeline.s


