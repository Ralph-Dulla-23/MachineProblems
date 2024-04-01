section .data
    input db "Enter password:   ", 0
    weak db "Password is weak.", 0
    strong db "Password is strong.", 0
    newline db 10

section .bss
    buffer resb 100
    length resb 1  

section .text
    global _start

_start:
    mov eax, 4             
    mov ebx, 1             
    mov ecx, input        
    mov edx, 16          
    int 0x80

    mov eax, 3             
    mov ebx, 0             
    mov ecx, buffer      
    mov edx, 100           
    int 0x80

password_count:
    cmp byte [buffer + eax], 0   
    je done_count                
    inc eax                      
    jmp password_count           

done_count:
    mov [length], al             

check_count:
    cmp byte [length], 8         
    jl if_weak                   

    mov eax, 4              
    mov ebx, 1              
    mov ecx, strong    
    mov edx, 18             
    int 0x80
    jmp exit                

if_weak:
    mov eax, 4              
    mov ebx, 1              
    mov ecx, weak     
    mov edx, 16            
    int 0x80
    jmp exit

exit:
    mov eax, 4              
    mov ebx, 1              
    mov ecx, newline        
    mov edx, 1              
    int 0x80

    mov eax, 1              
    xor ebx, ebx            
    int 0x80
