use strict;
use warnings;
use Test::More tests => 14;

BEGIN {
    use_ok($_)
      or BAIL_OUT(" $_ module does not compile :-(")
      for qw(
      PNI::Node::Perlfunc
      PNI::Node::Perlfunc::Cos
      PNI::Node::Perlfunc::Exp
      PNI::Node::Perlfunc::Int
      PNI::Node::Perlfunc::Keys
      PNI::Node::Perlfunc::Lc
      PNI::Node::Perlfunc::Lcfirst
      PNI::Node::Perlfunc::Length
      PNI::Node::Perlfunc::Log
      PNI::Node::Perlfunc::Sin
      PNI::Node::Perlfunc::Sqrt
      PNI::Node::Perlfunc::Uc
      PNI::Node::Perlfunc::Ucfirst
      PNI::Node::Perlfunc::Values
    );
}

