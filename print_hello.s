.section data
msg:    .ascii "Hello, World\n"
len = . - msg

.section .text 
.global _start 
_start:
    mov $1, %rax    # write
    mov $1, %rdi    # stdout
    mov $msg,%rsi   # buf
    mov $len,%rdx   # length
    syscall 

    mov $60, %rax   #edit
mov $0, %rdi    #status
syscall
