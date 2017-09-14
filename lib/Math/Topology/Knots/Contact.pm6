#!perl6

use v6;
use Math::Topology::Knots::Lock;
use Math::Topology::Knots::Segment;

# This lock asserts two segments are touching.
# can be trivially removed
# can be replaced by a crossing if two segments are attached (Type I)
# can be replaced by two adjacent crossings (Type II)
unit class Math::Topology::Knots::Contact 
  does Math::Topology::Knots::Lock;

has Math::Topology::Knots::Segment $!segment1;
has Math::Topology::Knots::Segment $!segment2;

submethod BUILD (Math::Topology::Knots::Segment :$!segment1, 
                 Math::Topology::Knots::Segment :$!segment2) { }

has method release () {
  $!segment1.unlock;
  $!segment2.unlock;

  self;
}


