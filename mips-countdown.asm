main:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        li      $2,10
        sb      $2,8($fp)
$L2:
        lb      $2,8($fp)
        nop
        andi    $2,$2,255
        addiu   $2,$2,-1
        andi    $2,$2,255
        sb      $2,8($fp)
        lb      $2,8($fp)
        nop
        bgez    $2,$L2
        nop

        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        j       $31
        nop
