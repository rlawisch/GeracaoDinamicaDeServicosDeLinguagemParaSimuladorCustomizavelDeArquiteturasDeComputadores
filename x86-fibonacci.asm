.fibonacci:
        pushl %ebp
        movl %esp,%ebp
        pushl %esi
        pushl %edi
        cmpl $0,8(%ebp)
        jne .L2
        xorl %eax,%eax
        jmp .L1
        jmp .L3
.L2:
        cmpl $1,8(%ebp)
        jne .L4
        movl $1,%eax
        jmp .L1
        jmp .L5
.L4:
        movl 8(%ebp),%eax
        decl %eax
        pushl %eax
        call .fibonacci
        movl %eax,%esi
        movl 8(%ebp),%eax
        addl $-2,%eax
        pushl %eax
        call .fibonacci
        movl %eax,%edi
        leal (%edi,%esi),%eax
        jmp .L1
.L5:
.L3:
.L1:
        leal -8(%ebp),%esp
        popl %edi
        popl %esi
        leave
        ret
