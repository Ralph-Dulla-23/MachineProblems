section .text
    global _start

_start:

    ; 
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  'D'
    mov   ecx, esp    ;
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ; 
    mov   ebx, 1      ;

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

     ;
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  'U'
    mov   ecx, esp    ;
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ;
    mov   ebx, 1      ; 

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ;
    int   80h         ; 

     ; 
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  'L'
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 
     ; 
    mov   eax, 4      ; 
    mov   ebx, 1      ;

    push  'L'
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

    ; 
    mov   eax, 4      ;
    mov   ebx, 1      ; 

    push  0Ah          ; 
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

     ; 
    mov   eax, 4      ;
    mov   ebx, 1      ; 

    push  'A'
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

    ; Print a newline character
    mov   eax, 4      ; 
    mov   ebx, 1      ; 

    push  0Ah          ;
    mov   ecx, esp    ; 
    mov   edx, 1      ; 
    int   80h         ; 

    ; System exit
    mov eax,1            
    mov ebx,0            
    int 80h

;sudo apt-get update
;sudo apt-get -y install nasm
;nasm -f elf act2.asm
;ld -m  elf_i386 act2.o -o act2
;./act2