# rec_test

An attemt to show differences of recursion with a while-condition as terminator. To use a while-loop inside a recursive function as a terminator is probably never a good choice, but I got a question regarding the difference between termination witn an if-statement (which is the natural choice to use btw) and a while-loop on a quiz at programming course I am attending. And this made me wonder why there really is a difference between using an if or a while but also if different programming languages handles recursive functions with while-loop termination.

Here are som exemples of code for a very basic count down function, each program asks for a number and is then suposed to print numbers in descending order until 1 and exit. 

## Results:

Language | Does while terminate | Results
_________|______________________|_______
Python | No | Numbers count down until 1 then an infinit loop occures and 1 is printed repeatedly
Ruby | No | Numbers count down until 1 then an infinit loop occures and 1 is printed repeatedly
Bash | Yes | Numbers count down until 1 and the program exits, but debugging `bash -x` shows multiple while-condition testing at the end 
