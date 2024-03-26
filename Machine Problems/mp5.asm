section .data
    newline db 10

section .bss
    buffer resb 1

section .text
    global _start

_start:
  
    mov eax, 3          
    mov ebx, 0           
    mov ecx, buffer     
    mov edx, 1          
    int 0x80             


if_symbol:

    cmp byte [buffer], 'A'
    jl skip_program

    cmp byte [buffer], 'z'
    jg skip_program


if_uppercase:

    cmp byte [buffer], 'Z'
    jg if_lowercase

    add byte [buffer], 32

    cmp byte [buffer], 60h
    jg skip_program

   

if_lowercase: 

    cmp byte [buffer], 'a'
    jl skip_program

    cmp byte [buffer], 'z'
    jg skip_program    

    sub byte [buffer], 32


skip_program:

    mov eax, 4           
    mov ebx, 1          
    mov ecx, buffer     
    mov edx, 1          
    int 0x80     

    mov eax, 4           
    mov ebx, 1          
    mov ecx, newline    
    mov edx, 1          
    int 0x80          

    ; Exit the program
    mov eax, 1           
    xor ebx, ebx        
    int 0x80       


;nasm -f elf dulla.asm
;ld -m  elf_i386 dulla.o -o dulla
;./dulla
