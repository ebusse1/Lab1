.section .bss
.globl ram
.lcomm ram, 256        # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl load_sum      # Make function visible to C program

load_sum:
    #find the load_sum

    movl $1,  %eax
    addl $2,  %eax
    addl $3,  %eax
    addl $4,  %eax
    addl $5,  %eax
    addl $6,  %eax
    addl $7,  %eax
    addl $8,  %eax
    addl $9,  %eax
    addl $10, %eax              # eax = 55 (0x37)

    mov %eax, ram+0x50(%rip)    

    ret

.section .note.GNU-stack,"",@progbits
