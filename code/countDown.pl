#!/usr/bin/env perl

select(STDOUT);
$| = 1; #Turn print buffering off to make print out appear continuously

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
