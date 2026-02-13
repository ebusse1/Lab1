.section .bss
.globl ram
.lcomm ram, 256        # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram_indirect       # Make function visible to C program

fill_ram_indirect:
    # Store FFh into RAM locations 50H - 58H using indirect addressing

    lea ram+0x50(%rip), %rdi #load address location of 50H in ram into the rdi register 
    mov $0xFF, %eax

    mov %eax, (%rdi) #Move into locations
    mov %eax, 1(%rdi)
    mov %eax, 2(%rdi)
    mov %eax, 3(%rdi)
    mov %eax, 4(%rdi)
    mov %eax, 5(%rdi)
    mov %eax, 6(%rdi)
    mov %eax, 7(%rdi)
    mov %eax, 8(%rdi)

    ret

.section .note.GNU-stack,"",@progbits
