; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos
leaw $1, %A
movw (%A), %D
leaw $2,%A
decw %D
movw %D, (%A)
leaw $1, %A
movw (%A), %D
leaw $0,%A
movw %D, (%A)
IF:
    leaw $1, %A
    movw (%A), %D
    leaw $0, %A
    addw (%A), %D, %D
    leaw $0,%A
    movw %D, (%A)
    leaw $2,%A
    movw (%A), %D
    decw %D
    movw %D, (%A)
    leaw $2,%A
    movw (%A), %D
    leaw $IF,%A
    jg %D
    nop
