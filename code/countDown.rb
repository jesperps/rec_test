#!/usr/bin/env ruby

print "Give me a number: "
number = gets.to_i

def countDown(length)
    while length > 0 do
        sleep(1)
        puts length
        countDown(length-1)
    end
end

countDown(number)
