.data
# Datos almacenados en memoria
caramelos:   .word 50      # Cantidad total de caramelos
ninos:       .word 6       # Cantidad de niños
resultado1:  .word 0       # Caramelos que recibe cada niño
resultado2:  .word 0       # Caramelos que sobran

.text
.globl main

main:
    # Cargar los datos desde memoria hacia los registros
    lw $t0, caramelos      # $t0 = 50
    lw $t1, ninos          # $t1 = 6

    # Realizar las operaciones aritméticas
    div $t2, $t0, $t1     # $t2 = 50 / 6 = 8
    rem $t3, $t0, $t1     # $t3 = 50 % 6 = 2

    # Guardar los resultados nuevamente en memoria
    sw $t2, resultado1     # resultado1 = 8
    sw $t3, resultado2     # resultado2 = 2

    # Finalizar el programa
    li $v0, 0
    jr $ra
