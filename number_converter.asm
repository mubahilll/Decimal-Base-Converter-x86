INCLUDE Irvine32.inc

.data
mub BYTE "Decimal to Binary, Octal, and Hexadecimal Converter - (211037)",0
prompt BYTE "Enter a decimal number: ", 0
binary BYTE "Binary: ", 0
octal BYTE "Octal: ", 0
hexadecimal BYTE "Hexadecimal: ", 0

.code
main PROC
    
    mov edx, OFFSET mub
    call writestring
    call crlf
    call crlf

    ; Get input from user
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt

    ; Convert and display binary
    mov edx, OFFSET binary
    call WriteString
    call WriteBin

    ; Convert and display octal
    call Crlf
    mov edx, OFFSET octal
    call WriteString
    call WriteInt

    ; Convert and display hexadecimal
    call Crlf
    mov edx, OFFSET hexadecimal
    call WriteString
    call WriteHex

    exit
main ENDP

END main
