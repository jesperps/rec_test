#!/usr/bin/env Rscript

countDown <- function(length) {
        while (length > 0) {
                Sys.sleep(1)
                print(length)
                countDown(length-1)
        }
}

cat("Give me a number: ")
n <- readLines(con="stdin", 1)
countDown(as.numeric(n))
