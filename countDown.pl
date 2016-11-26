#!/usr/bin/env perl

print "Give me a number: ";
$number = <STDIN>;

sub countDown {
    my $length = shift;
    while ($length > 0){
        sleep 1;
        print $length;
        $length-=1;
        countDown($length);
    }
}

countDown($number);
