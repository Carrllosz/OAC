.data
    A: .word 5
    B: .word 8
    result_register: .word 0

.text
    main:
    lw $t0, A           # Carrega o valor de A em $t0
    lw $t1, B           # Carrega o valor de B em $t1
    mul $t2, $t0, $t1   # Multiplica $t0 e $t1 e armazena em $t2
    
    sw $t2, result_register # Armazena o resultado em result_register
    
    # Exibe o resultado
    li $v0, 1           # Código da syscall para imprimir inteiro
    lw $a0, result_register # Carrega o valor de result_register em $a0
    syscall

    # Finaliza o programa
    li $v0, 10         # Código da syscall para finalizar o programa
    syscall

