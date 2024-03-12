section .data
    line1 db '   ______   ', 10
    line2 db '  /      \  ', 10
    line3 db ' |        | ', 10
    line4 db '  \      /  ', 10
    line5 db '   \____/   ', 10

section .text
    global _start

_start:
    ; 
    mov eax, 4
    mov ebx, 1
    mov ecx, line1
    mov edx, 18 ; 
    int 0x80

    ; 
    mov eax, 4
    mov ebx, 1
    mov ecx, line2
    mov edx, 18 ;
    int 0x80

   
    mov eax, 4
    mov ebx, 1
    mov ecx, line3
    mov edx, 18 ; 
    int 0x80

   
    mov eax, 4
    mov ebx, 1
    mov ecx, line4
    mov edx, 18 ;
    int 0x80

   
    mov eax, 4
    mov ebx, 1
    mov ecx, line5
    mov edx, 18 ; 
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80

;nasm -f elf act3.asm
;ld -m  elf_i386 act3.o -o act3
;./act3