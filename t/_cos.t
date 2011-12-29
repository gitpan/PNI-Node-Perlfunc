use strict;
use warnings;
use Test::More tests => 4;

use PNI::Node::Perlfunc::Cos;

my $cos = PNI::Node::Perlfunc::Cos->new;

isa_ok $cos, 'PNI::Node::Perlfunc::Cos';
is $cos->label, 'cos', 'label';

my $in  = $cos->in;
my $out = $cos->out;

$cos->task;
is $out->data, undef, 'default task';

my $a = rand(100);
my $b = cos($a);

$cos->in->data($a);
$cos->task;
is $b, $cos->out->data, 'b = cos( a )';

