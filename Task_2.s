.section .bss
.globl ram
.lcomm ram, 256        # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram_indirect       # Make function visible to C program

fill_ram_indirect:
    # Store FFh into RAM locations 50H - 58H using indirect addressing

    lea ram+0x50, %ebx #load address location of 50H in ram into the rdi register 
    mov $0xFF, %eax #load the proper hex value into the eax register

    mov %eax, (%ebx) #Move the data in eax into ram locations
    mov %eax, 1(%ebx)
    mov %eax, 2(%ebx)
    mov %eax, 3(%ebx)
    mov %eax, 4(%ebx)
    mov %eax, 5(%ebx)
    mov %eax, 6(%ebx)
    mov %eax, 7(%ebx)
    mov %eax, 8(%ebx)

    ret

.section .note.GNU-stack,"",@progbits
