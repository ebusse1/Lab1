# Lab 1
## Compile
gcc -nostdlib -no-pie print_hello.s -o hello
## Run
./hello

## Compile task 1
gcc -no-pie Task_1.s print_ram.c -o task1
## Run 
./task1

## Compile task 2
gcc -no-pie Task_2.s print_ram_indirect.c -o task2
## Run 
./task2

## Compile task 3
gcc -no-pie Task_3.s print_ram_clear.c -o task3
## Run 
./task3

## Compile task 4
gcc -no-pie Task_4.s print_ram_sum.c -o task4
## Run 
./task4