#!/usr/bin/awk -f

function countDown(len) {
    while (len > 0) {
        system("sleep 1");
        print len
        countDown(len-1)
    }
}

BEGIN {
    printf "Give me a number: "
    getline num < "-"
    countDown(num)
}

