.data
    array: .word 100, 200, 300, 400, 500, 600, 700, 800, 900, 1000

.text
    main:
    la $t0, array      # Carrega o endereço base do array em $t0
    li $t1, 5          # Índice desejado (valor 5)
    sll $t1, $t1, 2    # Multiplica o índice por 4 (tamanho de uma palavra)
    add $t2, $t0, $t1  # Adiciona o índice ao endereço base

    lw $t3, ($t2)      # Carrega o valor no índice 5 em $t3
    
    # Exibe o valor do índice 5
    li $v0, 1          # Código da syscall para imprimir inteiro
    move $a0, $t3      # Move o valor de $t3 para $a0 (valor de saída)
    syscall

    # Finaliza o programa
    li $v0, 10         # Código da syscall para finalizar o programa
    syscall
