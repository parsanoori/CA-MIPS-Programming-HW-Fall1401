    .data       # here is data segment
    # TODO: your datas may be held here
    .text       # here is text segment
    .globl main
main:
    # TODO: your mips instructions go here

    li $v0, 10  # exit the program
    syscall     # make the systemcall

