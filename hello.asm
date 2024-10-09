section .data
    hello_msg db "Hello, World!", 0xA  ; The message to print, followed by a newline (0xA)

section .text
    global _start

_start:
    ; Write the message to stdout
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, hello_msg  ; pointer to the message
    mov rdx, 14         ; message length (13 characters + 1 newline)
    syscall

    ; Exit the program
    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; exit code: 0
    syscall
