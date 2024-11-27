mul:
        addiu   $sp,$sp,-8
        sw      $fp,4($sp)
        move    $fp,$sp
        move    $3,$4
        move    $2,$5
        sb      $3,8($fp)
        sb      $2,12($fp)
        lb      $3,8($fp)
        lb      $2,12($fp)
        nop
        mult    $3,$2
        mflo    $2
        move    $sp,$fp
        lw      $fp,4($sp)
        addiu   $sp,$sp,8
        j       $31
        nop
        