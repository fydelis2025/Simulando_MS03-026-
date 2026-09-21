bits 32

section .data
    titulo db '============================================', 10
           db '            SISTEMA WINDOWS                 ', 10
           db '============================================', 10, 0

    msg1   db 'O sistema esta sendo desligado. Salve o    ', 10
           db 'trabalho em andamento e faca logoff.        ', 10, 0

    msg2   db 'Iniciado por: NT AUTHORITY\SYSTEM', 10, 0

    msg3   db 'Servico RPC falhou - Vulnerabilidade        ', 10
           db 'MS03-026 / CVE-2003-0352 - Buffer Overflow', 10, 0

    final  db 10, '============================================', 10
           db 'FIM DA SIMULACAO - W32.BLASTER / LOVSAN    ', 10
           db 'Ano: 2003 - Milhoes de maquinas afetadas    ', 10
           db '============================================', 10, 0

section .bss
    linha resb 40

section .text
global _start

; Função puts para 32-bits (usa ecx e edx)
puts:
    push eax
    push ebx
    push ecx
    push edx

    mov ecx, [esp + 20]     ; Pega o ponteiro passado via argumento na pilha
    xor edx, edx
.calcula_tamanho:
    cmp byte [ecx + edx], 0
    je .escreve
    inc edx
    jmp .calcula_tamanho

.escreve:
    mov eax, 4              ; syscall sys_write (32-bit)
    mov ebx, 1              ; stdout
    int 0x80                ; Interrupção de kernel do Linux 32-bit

    pop edx
    pop ecx
    pop ebx
    pop eax
    ret

; Atraso computacional simples
espera:
    push ecx
    mov ecx, 0x0FFFFFFF
.loop_espera:
    nop
    dec ecx
    jnz .loop_espera
    pop ecx
    ret

_start:
    push titulo
    call puts
    add esp, 4

    push msg1
    call puts
    add esp, 4

    push msg2
    call puts
    add esp, 4

    push msg3
    call puts
    add esp, 4

    mov esi, 10             ; Contador regressivo em ESI

loop_c:
    ; Monta a string no buffer BSS byte a byte
    mov byte [linha+0], 'T'
    mov byte [linha+1], 'e'
    mov byte [linha+2], 'm'
    mov byte [linha+3], 'p'
    mov byte [linha+4], 'o'
    mov byte [linha+5], ' '
    mov byte [linha+6], 'r'
    mov byte [linha+7], 'e'
    mov byte [linha+8], 's'
    mov byte [linha+9], 't'
    mov byte [linha+10], 'a'
    mov byte [linha+11], 'n'
    mov byte [linha+12], 't'
    mov byte [linha+13], 'e'
    mov byte [linha+14], ':'
    mov byte [linha+15], ' '

    ; Converte ESI para dezenas e unidades
    mov eax, esi
    xor edx, edx
    mov ebx, 10
    div ebx                 ; EAX = quociente, EDX = resto
    add al, '0'
    add dl, '0'
    mov [linha+16], al
    mov [linha+17], dl

    mov byte [linha+18], ' '
    mov byte [linha+19], 's'
    mov byte [linha+20], 'e'
    mov byte [linha+21], 'g'
    mov byte [linha+22], ' '
    mov byte [linha+23], '['
    mov byte [linha+24], 'S'
    mov byte [linha+25], 'I'
    mov byte [linha+26], 'M'
    mov byte [linha+27], 'U'
    mov byte [linha+28], 'L'
    mov byte [linha+29], 'A'
    mov byte [linha+30], 'C'
    mov byte [linha+31], 'A'
    mov byte [linha+32], 'O'
    mov byte [linha+33], ']'
    mov byte [linha+34], 10
    mov byte [linha+35], 0

    push linha
    call puts
    add esp, 4

    call espera

    dec esi
    jge loop_c

    push final
    call puts
    add esp, 4

    ; Saída limpa do programa (sys_exit 32-bit)
    mov eax, 1              ; syscall sys_exit
    xor ebx, ebx            ; status 0
    int 0x80
