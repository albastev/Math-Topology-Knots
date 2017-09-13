#!perl6

use v6;

unit class Math::Topology::Knots::Segment;

has $!lock = Nil;

has method unlock () {
  $!lock = Nil;
  
  self;
}

has method lock ($lock) {
  $!lock = $lock;
  
  self;
}

has method locked () {
  $!lock ?? True !! False;
}
