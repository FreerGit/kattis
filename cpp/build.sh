#!/bin/bash

FLAGS=$(tr '\n' ' ' < compile_flags.txt)
g++ $FLAGS main.cpp -o bin/main

if [ "$1" = "--run" ]; then
    ./bin/main
fi
