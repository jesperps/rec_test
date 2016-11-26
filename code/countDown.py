#!/usr/bin/env python

import time 
number=input("Give me a number: ")

def countDown(length):
     while length > 0:
         time.sleep(1)
         print(length)
         countDown(length-1)

countDown(number)
