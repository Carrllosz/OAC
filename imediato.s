.data
    result_immediate: .word 0

.text
    main:
    li $t0, 10         # Carrega o valor imediato 10 em $t0
    li $t1, 20         # Carrega o valor imediato 20 em $t1
    add $t2, $t0, $t1  # Soma $t0 e $t1 e armazena em $t2
    
    sw $t2, result_immediate # Armazena o resultado em result_immediate
    
    # Exibe o resultado
    li $v0, 1          # Código da syscall para imprimir inteiro
    lw $a0, result_immediate # Carrega o valor de result_immediate em $a0
    syscall

    # Finaliza o programa
    li $v0, 10         # Código da syscall para finalizar o programa
    syscall
