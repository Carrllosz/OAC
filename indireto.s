.data
    value1: .word 10
    value2: .word 20

.text
    main:
    la $t0, value1     # Carrega o endereço do primeiro valor em $t0
    lw $t1, ($t0)      # Carrega o valor do primeiro valor em $t1
    
    la $t0, value2     # Carrega o endereço do segundo valor em $t0
    lw $t2, ($t0)      # Carrega o valor do segundo valor em $t2
    
    # Exibe os valores carregados
    li $v0, 1          # Código da syscall para imprimir inteiro
    move $a0, $t1      # Move o valor de $t1 para $a0 (primeiro valor de saída)
    syscall
    
    move $a0, $t2      # Move o valor de $t2 para $a0 (segundo valor de saída)
    syscall

    # Finaliza o programa
    li $v0, 10         # Código da syscall para finalizar o programa
    syscall
