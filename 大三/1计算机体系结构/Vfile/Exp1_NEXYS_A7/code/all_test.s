.global __start
__start:
addi x0, x0, 0      # 00000013
lw x2, 4(x0)        # 00402103
lw x4, 8(x0)        # 00802203  stall 1
add x1, x2, x4      # 004100B3  forward no stall
addi x1, x1, -1     # FFF08093  forwarding 
lw x5, 12(x0)       # 00C02283
lw x6, 16(x0)       # 01002303
lw x7, 20(x0)       # 01402383
sub x1,x4,x2        # 402200B3
and x1,x4,x2        # 002270B3
or  x1,x4,x2        # 002260B3
xor x1,x4,x2        # 002240B3
sll x1,x4,x2        # 002210B3
slt x1,x4,x2        # 002220B3
slt x1,x2,x4        # 004120B3
srl x1, x6, x2      # 002350B3
sra x1, x6, x2      # 402350B3
sra x1, x7, x2      # 4023D0B3
sltu x1, x6, x7     # 007330B3
sltu x1, x7, x6     # 0063B0B3
add x0,x0,x0        # 00000033  、、此处
addi x1,x10,-3      # FFD50093
andi x1,x4,15       # 00F27093
ori  x1,x4,15       # 00F26093
xori x1,x4,15       # 00F24093
slti x1,x4,15       # 00F22093
slli x1,x4,1        # 00121093
srli x1,x4,2        # 00225093
srai x1, x6, 12     # 40C35093
sltiu x1, x6, -1    # FFF33093
sltiu x1, x7, -1    # FFF3B093
beq  x4,x5,label0   # 00520863
beq  x4,x4,label0   # 00420663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label0: 
bne  x4,x4,label1   # 00421863
bne  x4,x5,label1   # 00521663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label1: 
blt  x5,x4,label2   # 0042C863
blt  x4,x5,label2   # 00524663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label2: 
bltu x6,x7,label3   # 00736863
bltu x7,x6,label3   # 0063E663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label3: 
bge x4,x5,label4    # 00525863
bge x5,x4,label4    # 0042D663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label4: 
bgeu x7,x6,label5   # 0063F863
bgeu x6,x7,label5   # 00737663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label5: 
bge  x4,x4,label6   # 00425663
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
label6: 
lui  x1,4           # 000040B7
jal  x1,12          # 00C000EF
addi x0,x0,0        # 00000013
addi x0,x0,0        # 00000013
lw   x8, 24(x0)     # 01802403
sw   x8, 28(x0)     # 00802E23
lw   x1, 28(x0)     # 01C02083
sh   x8, 32(x0)     # 02801023
lw   x1, 32(x0)     # 02002083
sb   x8, 36(x0)     # 02800223
lw   x1, 36(x0)     # 02402083
lh   x1, 26(x0)     # 01A01083
lhu  x1, 26(x0)     # 01A05083
lb   x1, 27(x0)     # 01B00083
lbu  x1, 27(x0)     # 01B04083
auipc x1, 0xffff0   # FFFF0097
jalr x1,0(x0)       # 000000E7