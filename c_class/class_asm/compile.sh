#!/bin/bash

nasm -f elf64 class.asm
gcc class.o main.c -o class
