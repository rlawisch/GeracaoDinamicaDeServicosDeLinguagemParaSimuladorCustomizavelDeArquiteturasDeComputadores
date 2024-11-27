$fibonacci:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        sw      $16,28($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        lw      $2,40($fp)
        nop
        bne     $2,$0,$L2
        nop

        move    $2,$0
        j       $L3
        nop

$L2:
        lw      $3,40($fp)
        li      $2,1
        bne     $3,$2,$L4
        nop

        li      $2,1
        j       $L3
        nop

$L4:
        lw      $2,40($fp)
        nop
        addiu   $2,$2,-1
        move    $4,$2
        jal     $fibonacci
        nop

        move    $16,$2
        lw      $2,40($fp)
        nop
        addiu   $2,$2,-2
        move    $4,$2
        jal     $fibonacci
        nop

        addu    $2,$16,$2
$L3:
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        lw      $16,28($sp)
        addiu   $sp,$sp,40
        j       $31
        nop
