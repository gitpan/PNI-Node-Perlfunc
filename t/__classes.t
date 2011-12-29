use strict;
use warnings;
use Test::More tests => 7;

BEGIN {
    use_ok($_)
      or BAIL_OUT(" $_ module does not compile :-(")
      for qw(
      PNI::Node::Perlfunc
      PNI::Node::Perlfunc::Cos
      PNI::Node::Perlfunc::Exp
      PNI::Node::Perlfunc::Int
      PNI::Node::Perlfunc::Log
      PNI::Node::Perlfunc::Sin
      PNI::Node::Perlfunc::Sqrt
    );
}

