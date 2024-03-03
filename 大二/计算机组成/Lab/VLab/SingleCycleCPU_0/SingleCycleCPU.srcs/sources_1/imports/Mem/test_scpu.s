# -------------------------------------------------------
# File:         test_scpu.s
# Maintainer:   ziyue
# Date:         2021-02-24 13：33
# Purpose:      test some basic instructions of cpu core.
# -------------------------------------------------------

    addi    zero, zero, 0
    
# test I type
    addi    a0, zero, 7     # a0 = 0x0000_0007
    slti    a1, a0, 9       # a1 = 0x0000_0001
    sltiu   a2, a0, 8       # a2 = 0x0000_0001 
    xori    a3, a0, 8       # a3 = 0x0000_000F
    ori     a4, a0, 6       # a4 = 0x0000_0007
    andi    a5, a0, 6       # a5 = 0x0000_0006
    slli    a6, a0, 2       # a6 = 0x0000_001C
    srli    a7, a0, 2       # a7 = 0x0000_0001
    srai    a7, a0, 0       # a7 = 0x0000_0007

# test R type
    add     s1, a0, a0      # s1 = 0x0000_000E
    sub     s2, a6, a0      # s2 = 0x0000_0015
    sll     s3, a6, a3      # s3 = 0x000E_0000
    slt     s4, a0, s3      # s4 = 0x0000_0001
    xor     s5, a0, a3      # s5 = 0x0000_0008
    srl     s6, a0, a2      # s6 = 0x0000_0003
    or      s7, a0, a4      # s7 = 0x0000_0007
    and     s8, a0, a2      # s8 = 0x0000_0001


# test LW and SW
    lw      s0, 0(zero)     # s0 = 0x1234_5678
    slli    s0, s0, 1       # s0 = 0x2468_acf0
    sw      s0, 4(zero)     # (* no GPRs modified *)
    lw      a0, 4(zero)     # a0 = 0x2468_acf0
    
    bne     a0, a1, bne_target
    beq     zero, zero, end
    

# test JUMP and BRANCH

bne_target:
    addi    a3, zero, 0     # a3 = 0x0
    lw      s1, 0(zero)     # s1 = 0x1234_5678
    beq     a0, s1, end     
    addi    s1, a0, 2       # a0 = 0x2468_acf2
    bge     a2, zero, bge_target
    beq     zero, zero, end

bge_target:
    addi    a3, a3, 1       # a3 = 0x1
    sub     a1, zero, a0    # a1 = 0xdb97_5310
    bltu    a0, a1, bltu_target
    beq     zero, zero, end

bltu_target:
    addi    a3, a3, 1       # a3 = 0x2
    blt     a0, a1, blt_target
    beq     zero, zero, end

blt_target:
    addi    a3, a3, 1
   
end:
    addi    zero, zero, 0
    beq     zero, zero, end



