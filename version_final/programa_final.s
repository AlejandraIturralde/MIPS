.data
caramelos:     .word 50
ninos:         .word 6
resultado1:    .word 0
resultado2:    .word 0

mensaje_exacto:     .asciiz "No sobraron caramelos\n"
mensaje_sobrantes:  .asciiz "Caramelos sobrantes: "

.text
.globl main

main:
    # Cargar
    lw $t0, caramelos
    lw $t1, ninos

    # operaciones
    div $t2, $t0, $t1      # caramelos por niño
    rem $t3, $t0, $t1      # caramelos q sobraron

    # guardar
    sw $t2, resultado1
    sw $t3, resultado2

    # Comparar el sobrante con 0
    beq $t3, $zero, Exacto

    # Si hay sobrantes
    li $v0, 4
    la $a0, mensaje_sobrantes
    syscall

    li $v0, 1
    add $a0, $t3, $zero
    syscall

    j Fin

Exacto:
    li $v0, 4
    la $a0, mensaje_exacto
    syscall

Fin:
    li $v0, 10
    syscall
