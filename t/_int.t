use strict;
use warnings;
use Test::More tests => 4;

use PNI::Node::Perlfunc::Int;

my $int = PNI::Node::Perlfunc::Int->new;

isa_ok $int, 'PNI::Node::Perlfunc::Int';
is $int->label, 'int', 'label';

my $in  = $int->in;
my $out = $int->out;

$int->task;
is $out->data, undef, 'default task';

my $a = rand(100);
my $b = int($a);

$int->in->data($a);
$int->task;
is $b, $int->out->data, 'b = int( a )';

