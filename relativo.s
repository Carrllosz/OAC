.text
    main:
    # Suponha que a condição esteja em $t0
    beq $t0, $zero, nao_atendida # Pula se a condição não for atendida
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    b fim
    nao_atendida:
    # Continua aqui se a condição não for atendida
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    fim:
    # Exibe uma mensagem após o salto
    li $v0, 4           # Código da syscall para imprimir string
    la $a0, mensagem_fim
    syscall

    # Finaliza o programa
    li $v0, 10         # Código da syscall para finalizar o programa
    syscall

.data
    mensagem_fim: .asciiz "Fim do programa\n"
