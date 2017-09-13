#!perl6

use v6;

unit class Math::Topology::Knots::World;

has Array @!strands;

has @!active;

has method createStrand () {
  my @strand;
  
  @!strands.push(@strand);
  
  self;
}

has method elems () {
  @!strands.elems;
}

has setActive (:$index) {
  @!active := @!strands[$index]
}
