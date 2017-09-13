#!perl6

use v6;

# This lock asserts two segments are touching.
# can be trivially removed
# can be replaced by a crossing if two segments are attached (Type I)
# can be replaced by two adjacent crossings (Type II)
unit class Math::Topology::Knots::Contact does Lock;
