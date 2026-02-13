.section .bss
.globl ram
.lcomm ram, 256        # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram_indirect       # Make function visible to C program

fill_ram_indirect:
    # Store FFh into RAM locations 50H - 58H using indirect addressing

    lea ram+0x50(%rip), %rdi #load address location of 50H in ram into the rdi register 

    movb $0xFF, (%rdi) #Move into locations
    movb $0xFF, 1(%rdi)
    movb $0xFF, 2(%rdi)
    movb $0xFF, 3(%rdi)
    movb $0xFF, 4(%rdi)
    movb $0xFF, 5(%rdi)
    movb $0xFF, 6(%rdi)
    movb $0xFF, 7(%rdi)
    movb $0xFF, 8(%rdi)

    ret

.section .note.GNU-stack,"",@progbits
