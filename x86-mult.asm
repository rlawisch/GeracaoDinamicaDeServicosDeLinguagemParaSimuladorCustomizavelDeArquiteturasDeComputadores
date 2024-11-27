mul:
        pushl %ebp
        movl %esp,%ebp
        pushl %ebx
        pushl %esi
        movb 8(%ebp),%dl
        movb %dl,8(%ebp)
        movb 12(%ebp),%dl
        movb %dl,12(%ebp)
        movsbl 8(%ebp),%ebx
        movsbl 12(%ebp),%esi
        imull %esi,%ebx
        movl %ebx,%eax
        jmp .L1
.L1:
        leal -8(%ebp),%esp
        popl %esi
        popl %ebx
        leave
        ret
