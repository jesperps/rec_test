#!/usr/bin/env scala 

def countDown (length: Int){
    while (length > 0){
        Thread.sleep(1000)
        print(length)
        countDown(length-1)
    }
}

print("Give me a number: ")
val number = scala.io.StdIn.readInt()
countDown(number)

