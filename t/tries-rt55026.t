#!/usr/bin/perl -w
use strict;
use warnings;

#############################################
## NOTE: This test should increment $tried  #
##       each time the user fails to choose #
##       a valid value and prompt again.    #
##                                          #
## Request Tracker #55026                   #
#############################################

use Term::Menu;

my $menu = new Term::Menu(
    tries => 0,
);

my $return = $menu->menu(
    ok => ["","a"],
);

if (defined $return and $return eq $menu->lastval and $return eq "ok")
{
    print "ok\n";
} else {
    print "error\n";
    exit;
}
