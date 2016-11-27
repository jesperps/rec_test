# rec_test

An attempt to show differences of recursion with a while-condition as terminator between various programming languages. To use a while-loop inside a recursive function as a terminator is probably never a good choice, but I got a question regarding the difference between termination with an if-statement (which is the natural choice to use btw) and a while-loop on a quiz at [programming course](https://www.coursera.org/learn/python-genomics) I am attending. And this made me wonder why there really is a difference between using an if or a while but also if different programming languages handles recursive functions with while-loop termination differently.

Here are some examples of code for a very basic count down function, each program asks for a number and is then supposed to print numbers in descending order until 1 and exit. Example written in bash:

``` bash
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
```

## Results:

Language | Does while terminate | Results
---------|----------------------|--------
[Python](code/countDown.py) | No | Numbers count down until 1 then an infinite loop occurs and 1 is printed repeatedly until the program is terminated with `<ctrl>+c`
[Ruby](code/countDown.rb) | No | Numbers count down until 1 then an infinite loop occurs and 1 is printed repeatedly until the program is terminated with `<ctrl>+c`  
[Bash](code/countDown.sh) | Yes | Numbers count down until 1 and the program exits, but debugging `bash -x` shows multiple while-condition testing at the end
[Perl](code/countDown.pl) | Yes | This one is really one of the stranger ones. The given number is printed out as expected but after that the program seems to hold it's breath (possibly due to the sleep instructions stacking up  together for some not so obvious reason). After a long pause more numbers are printed out one a single row. The pause doubles as the given number increases as do the number numbers. If `2` is given `11` is printed out if `3` is given `211211` is printed, `4` gets `32112113211211` and so on, the results of a test run is provided [here](https://raw.githubusercontent.com/jesperps/rec_test/master/findings/perl_exemple_output.txt)
[Awk](code/countDown.awk) | No | Numbers count down until 1 then an infinite loop occurs and 1 is printed repeatedly until the program is terminated with `<ctrl>+z` (`<ctrl>+c` has no effect)
[R](code/countDown.R) | No | Numbers count down until 1 then an infinite loop occurs and 1 is printed repeatedly until the program is terminated with `<ctrl>+c`
[Java](code/CountDown.java) | Yes | Very similar to the Perl one, except the numbers are printed out continuously (with the sleep interval between each print out), i.e. if 3 is given `3211211` is printed, if 4 is given `432112113211211` is printed out etc...
[C](code/countDown.c) | No | Numbers count down until 1 then an infinite loop occurs and 1 is printed repeatedly until the program is terminated with `<ctrl>+c`
