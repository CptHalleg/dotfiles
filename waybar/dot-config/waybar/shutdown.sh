#!/bin/bash

counter=30

while (( counter >= 0 ))
do
    echo "Shutdown in $counter seconds. Press Ctrl+C to cancel."
    ((counter--))
    sleep 1
done

shutdown now