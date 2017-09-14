#!perl6

use v6;
use Test;
use lib '../lib';

plan 6;

use Math::Topology::Knots::Segment;
use Math::Topology::Knots::Contact;

my $segment1 = Math::Topology::Knots::Segment.new;
my $segment2 = Math::Topology::Knots::Segment.new;

my $lock = Math::Topology::Knots::Contact.new(segment1=>$segment1,segment2=>$segment2);

nok $segment1.locked;
nok $segment2.locked;

$segment1.lock($lock);
$segment2.lock($lock);

ok $segment1.locked;
ok $segment2.locked;

$lock.release;

nok $segment1.locked;
nok $segment2.locked;
