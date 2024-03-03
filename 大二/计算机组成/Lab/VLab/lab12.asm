addi x5,x0,0x7f0 	#x5= 0x000007f0
addi x6,x0,-1		#x6= 0xffffffff
and  x7,x5,x6		#x7= 0x000007f0
add  x7,x7,x5       #x7= 0x00000fe0
ori  x5,x5,-2047    #x5= 0xfffffff1
lw   x8,(0)x0       #x8= 0x0f0f0f0f
slt  x9,x5,x8       #x9= 1
xor  x9,x5,x8       #x8= 0xf0f0f0fd
srli x5,x5,2		#x5= 0x3ffffffc -4
srl  x7,x7,x5       #x7= 0x000000fd
sub  x7,x7,x5       #x7= 0x00000102
slti x9,x9,0        #x9= 0
beq  x9,x0,out      #x9=x0
loop:
add x0,x0,x0   
xor x0,x0,x0
addi x0,x0,2
jal  x0,loop
out:
sw  x8,(8)x0
lw  x10,(8)x0
xori x7,x7,0x10d    #x7= 0x00000100
or   x4,x8,x5       #x4= 0xfffffff
jal x1,loop