#!/bin/bash

g++ main.cpp -o a.out -O2 \
-I ./ac-library-master \
-fdiagnostics-color=always \
-Wall -Wextra \
-mtune=native -march=native \
-fconstexpr-depth=2147483647 \
-fconstexpr-loop-limit=2147483647 \
-fconstexpr-ops-limit=2147483647 \
-fsanitize=address -fsanitize=leak

/usr/bin/time -f "Time: %e sec\nMemory: %M Kbyte" -o res.txt \
./a.out < in.txt > out.txt 2> err.txt
