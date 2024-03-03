    addi    zero, zero, 0
    auipc t3, 100
    lui s11, 0xFE000
    addi s9, x0, 1
    sw s9, 0(s11) #第一盏灯亮
    addi s10, x0, 255
    slli s9, s9, 1 # test I type
    sw s9, 0(s11) #第二盏灯亮     
    addi    a0, zero, 7     # a0 = 0x0000_0007
    slti    a1, a0, 9       # a1 = 0x0000_0001
    sltiu   a2, a0, 8       # a2 = 0x0000_0001 
    xori    a3, a0, 8       # a3 = 0x0000_000F
    ori     a4, a0, 6       # a4 = 0x0000_0007
    andi    a5, a0, 6       # a5 = 0x0000_0006
    slli    a6, a0, 2       # a6 = 0x0000_001C
    srli    a7, a0, 2       # a7 = 0x0000_0001
    srai    a7, a0, 0       # a7 = 0x0000_0007
    slli s9, s9, 1  # test R type
    sw s9, 0(s11) #第三盏灯亮
    add     s1, a0, a0      # s1 = 0x0000_000E
    sub     s2, a6, a0      # s2 = 0x0000_0015
    sll     s3, a6, a3      # s3 = 0x000E_0000
    slt     s4, a0, s3      # s4 = 0x0000_0001
    xor     s5, a0, a3      # s5 = 0x0000_0008
    srl     s6, a0, a2      # s6 = 0x0000_0003
    or      s7, a0, a4      # s7 = 0x0000_0007
    and     s8, a0, a2      # s8 = 0x0000_0001
    slli s9, s9, 1  # test LW and SW
    sw s9, 0(s11) #第四盏灯亮
    lw      s0, 0(zero)     # s0 = 0x1234_5678 00002403
    slli    s0, s0, 1       # s0 = 0x2468_acf0
    sw      s0, 4(zero)     # (* no GPRs modified *)
    lw      a0, 4(zero)     # a0 = 0x2468_acf0 00402503 
    bne     a0, a1, bne_target  # branch 00B51463 需要 stall两次
    beq     zero, zero, end_b
bne_target: slli s9, s9, 1  # test JUMP and BRANCH
            sw s9, 0(s11) #第五盏灯亮
            addi    a3, zero, 0     # a3 = 0x0
            lw      s1, 0(zero)     # s1 = 0x1234_5678
            beq     a0, s1, end_b   # no branch
            addi    s1, a0, 2       # s1 = 0x2468_acf2
            bge     a2, zero, bge_target    # branch 00065463
            beq     zero, zero, end_b
bge_target: slli s9, s9, 1  # test JUMP and BRANCH
            sw s9, 0(s11) #第六盏灯亮
            addi    a3, a3, 1       # a3 = 0x1
            sub     a1, zero, a0    # a1 = 0xdb97_5310
            bltu    a0, a1, bltu_target # branch
            beq     zero, zero, end_b
bltu_target:slli s9, s9, 1  # test JUMP and BRANCH
            sw s9, 0(s11) #第七盏灯亮
            addi    a3, a3, 1       # a3 = 0x2
            blt     a0, a1, blt_target # no branch
            beq     zero, zero, end_b
blt_target: slli s9, s9, 1  # test JUMP and BRANCH
            sw s9, 0(s11) #第八盏灯亮，但不会进入此处
            addi    a3, a3, 1
end_b:      sw s10, 0(s11) #全亮
            sw x0, 0(s11) #灭
            addi    zero, zero, 0
            addi	t6, zero, 1     # t6 = 1
            lui		t5, 0xbabe      # t5 = 0x0babe000
end:        slli s9, s9, 1  # test JUMP and BRANCH
            sw s9, 0(s11) #第八盏灯亮
            sw x0, 0(s11) #灭
            jal		ra, func        # dead loop
            jal		zero, end    
func:       srli s9, s9, 1  # test JUMP and BRANCH
            sw s9, 0(s11) #第七盏灯亮，最后七和八来回亮
            sw x0, 0(s11) #灭
            addi	zero, zero, 0
            jalr	zero, ra, 0