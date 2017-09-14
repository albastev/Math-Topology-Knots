#!perl6

use v6;
use Math::Topology::Knots::Lock;

unit class Math::Topology::Knots::Segment;

has $!lock = Nil;

has method unlock () {
  $!lock = Nil;
  
  self;
}

has method lock (Math::Topology::Knots::Lock $lock) {
  fail 'Attempt to lock an already locked Segment' if self.locked;

  $!lock = $lock;
  
  self;
}

has method locked () {
  $!lock ?? True !! False;
}
