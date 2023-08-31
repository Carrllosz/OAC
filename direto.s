.data
    array: .word 10, 20, 30, 40, 50, 60, 70, 80, 90, 100

.text
    main:
    la $t0, array      # Carrega o endereço base do array em $t0
    li $t1, 5          # Índice desejado (valor 5)
    addi $t0, $t0, 20  # Adiciona o deslocamento para alcançar o endereço 2005 (5 * 4 = 20)

    lw $t2, ($t0)      # Carrega o valor do endereço 2005 em $t2
    
    # Exibe o valor do endereço 2005
    li $v0, 1          # Código da syscall para imprimir inteiro
    move $a0, $t2      # Move o valor de $t2 para $a0 (valor de saída)
    syscall

    # Finaliza o programa
    li $v0, 10         # Código da syscall para finalizar o programa
    syscall
