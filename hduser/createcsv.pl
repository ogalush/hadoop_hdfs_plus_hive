#!/usr/bin/perl

use Data::Dumper;

=pod
  |host| access | status|
  | a.com  |      1 |    200|
  | b.org  |      1 |    200|
  | c.jp   |      1 |    200|
  | c.jp   |      1 |    404|
  | a.com  |      1 |    500|
=cut

#-- domain list
my $domlist = {
  0 => 'a.com',
  1 => 'b.org',
  2 => 'c.biz',
  3 => 'd.jp',
  4 => 'e.asia',
  5 => 'f.info',
  6 => 'g.tokyo',
  7 => 'h.go.jp',
  8 => 'i.gov',
  9 => 'j.com.tw',
};

#-- status list
my $statlist = {
 0 => 200,
 1 => 404,
 2 => 403,
 3 => 301,
 4 => 302,
 5 => 500,
 6 => 502,
 7 => 503,
 8 => 200,
 9 => 200,
};

#-- open
open(DATAFILE, "> /home/hduser/access.csv") or die("Error");

  #-- get randnum
  foreach(1..100000000){
    my $rand1 = int(rand(9));
    my $rand2 = int(rand(9));

    #-- output
##print Dumper($rand1);
    print DATAFILE $domlist->{$rand1} . ", " . $statlist->{$rand2}."\n";
##print "$domlist->{$rand1} ,  $statlist->{$rand2} \n";
  }

close(DATAFILE);




1;
