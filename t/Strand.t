#!perl6

use v6;
use Test;
use lib '../lib';

plan 4;

use Math::Topology::Knots::Strand;

my $strand = Math::Topology::Knots::Strand.new;

ok $strand.elems ~~ 0;

$strand.insertSegment(index => 0);

ok $strand.elems ~~ 1;

$strand.relax;

#say $strand.elems;

ok $strand.elems ~~ 3;

$strand.simplify;

ok $strand.elems ~~ 0;
