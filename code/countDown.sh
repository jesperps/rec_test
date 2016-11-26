#!/usr/bin/env bash

printf "Give me a number: "
read number

function countDown {
    length=$1
    while [ $length -gt 0 ]; do
        sleep 1
        echo $length
        countDown $(($length - 1))
    done
}

countDown $number
