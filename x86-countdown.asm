main:
        pushl %ebp
        movl %esp,%ebp
        subl $4,%esp
        movb $10,-4(%ebp)
.L2:
        addb $-1,-4(%ebp)
        cmpb $0,-4(%ebp)
        jl .L3
        jmp .L2
.L3:
        leave
        ret
