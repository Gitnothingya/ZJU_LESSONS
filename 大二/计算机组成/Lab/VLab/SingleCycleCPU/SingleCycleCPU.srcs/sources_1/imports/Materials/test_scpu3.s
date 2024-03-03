addi zero, zero, 0
lui s11, 0xFE000
addi s9, x0, 1
sw s9, 0(s11) #��һյ����
addi s10, x0, 255    
	slli s9, s9, 1 # test I type
    sw s9, 0(s11) #�ڶ�յ����
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
    sw s9, 0(s11) #����յ����
    add     s1, a0, a0      # s1 = 0x0000_000E
    sub     s2, a6, a0      # s2 = 0x0000_0015
    sll     s3, a6, a3      # s3 = 0x000E_0000
    slt     s4, a0, s3      # s4 = 0x0000_0001
    xor     s5, a0, a3      # s5 = 0x0000_0008
    srl     s6, a0, a2      # s6 = 0x0000_0003
    or      s7, a0, a4      # s7 = 0x0000_0007
    and     s8, a0, a2      # s8 = 0x0000_0001
    slli s9, s9, 1  # test LW and SW
    sw s9, 0(s11) #����յ����
    lw      s0, 0(zero)     # s0 = 0x1234_5678 PC = 0x48
    slli    s0, s0, 1       # s0 = 0x2468_acf0 
    sw      s0, 4(zero)     # (* no GPRs modified *)
    lw      a0, 4(zero)     # a0 = 0x2468_acf0 PC = 0x54
    bne     a0, a1, bne_target
    beq     zero, zero, loop
bne_target:	slli s9, s9, 1  # test JUMP and BRANCH
    sw s9, 0(s11) #����յ����
	addi    a3, zero, 0     # a3 = 0x0 PC = 60
    lw      s1, 0(zero)     # s1 = 0x1234_5678
    beq     a0, s1, loop
    addi    s1, a0, 2       # a0 = 0x2468_acf2
    bge     a2, zero, bge_target
    beq     zero, zero, loop
bge_target:    addi    a3, a3, 1       # a3 = 0x1
    sub     a1, zero, a0    # a1 = 0xdb97_5310
    bltu    a0, a1, bltu_target
    beq     zero, zero, loop
bltu_target:    addi    a3, a3, 1       # a3 = 0x2
    blt     a0, a1, blt_target
    beq     zero, zero, test_csrs
blt_target: addi    a3, a3, 1       # a3 = 1 
test_csrs: 	slli s9, s9, 1  # test JUMP and BRANCH
    sw s9, 0(s11) #����յ����
	addi    zero, zero, 0
    addi    zero, zero, 0
    addi    zero, zero, 0
    addi    zero, zero, 0
    addi    s0, zero, 255   # set mstatus
    addi x0, x0, 0 #��ʱ��� #csrrsi  s0, mstatus, 8  #44 300
    addi    a0, zero, 8     # a0 = 8
    slli    a1, a0, 4       # a1 = 0x80
    or      a0, a0, a1      # a0 = 0x88
    slli    a1, a1, 4       # a1 = 0x800
    or      a0, a0, a1      # a0 = 0x888
    addi x0, x0, 0 #��ʱ��� #csrrw   zero, mie, a0   #50 304 mie = 0x888 PC = 0xc4 50
    la      a0, trap_m      # a0 = 0x100 ����
    #csrrw   zero, mtvec, a0 # mtvec = 0x100 PC = 0xd0 53
    addi x0, x0, 0 #��ʱ���
test_ecall: 	addi s9, x0, 0 
    sw s9, 0(s11) #��һյ����
    addi    a0, zero, 0
    addi    a0, a0, 1 # PC = 0xd8
    addi    a0, a0, 1 # PC = 0xdc
    ecall             # PC = 0xe0 mcause = 32'h0000_000B
    addi    a0, zero, 0
test_illegal: slli s9, s9, 1  
    sw s9, 0(s11) #�ڶ�յ����
	addi x0, x0, 0 #��ʱ����Ƿ�ָ�� 0xFFFFFFFF
test_load_misalign: slli s9, s9, 1  
    sw s9, 0(s11) #����յ����
    addi    a0, zero, 1
    lw      a1, 0(a0) #lw������
    addi    a0, zero, 0 # PC = f0
    addi	a0, zero, 1 #
    sw		a1, 0(a0)  #sw������
    addi	a0, zero, 0
    addi x0, x0, 0 #��ʱ��� beq x0, x0, 2 0x00000167
loop:   addi    s0, zero, 15
    addi    s0, s0, 15
    jal     zero, loop
trap_m: sw		s10, 0(s11) #���жϣ�ȫ��
    addi x0, x0, 0 #��ʱ��� #csrrs   a0, mcause, zero # �����ecall���µģ���a0 = 0xb 342
    blt     a0, x0, no_add_4
    addi x0, x0, 0 #��ʱ��� #csrrs   t0, mepc, zero
    addi    t0, t0, 4
    addi x0, x0, 0 #��ʱ��� #csrrw   zero, mepc, t0
no_add_4:    addi x0, x0, 0 #��ʱ��� #mret