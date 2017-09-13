#!perl6

use v6;
use Math::Topology::Knots::Segment;

unit class Math::Topology::Knots::Strand;

has Math::Topology::Knots::Segment @!elements;

has Bool $!closed = True;

has method elems () {
  @!elements.elems;
}

has method insertSegment (:$index) {
  my $segment = Math::Topology::Knots::Segment.new;
  
  @!elements.splice($index,$index,$segment);
  
  self;
} 

has method simplify () {
  my Math::Topology::Knots::Segment @filt = grep &{ $_.locked ?? True !! False; }, @!elements;
  
  @!elements := @filt;
  
  self;
}

has method relax () {
  my $count = @!elements.elems;
  for ($count ... 0) {
    self.insertSegment(index => $_);
  }
}

has method takeBight ($splice_index) {
  # splices in an adjacency lock at the given location
  
  self;
}
