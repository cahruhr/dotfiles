#!/bin/bash

# watches the specified C files; compiles and runs when they change
# names the executable file based on the first source file given
# TODO: implement arg-passing and stdin redirection
# TODO: multiple source files
# TODO: check to make sure inotify-tools are installed

while [ true ]; do
    # wait for the specified file to change
    while inotifywait -q -e modify $1; do
        echo "waiting..."
    done

    out_filename=`basename $1 ".c"`".out"
    echo "--- compiling "$1" ---"
    gcc -o $out_filename $1
    echo "--- running "$out_filename" ---"
    ./$out_filename
done

