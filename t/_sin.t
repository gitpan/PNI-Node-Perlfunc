use strict;
use warnings;
use Test::More tests => 4;

use PNI::Node::Perlfunc::Sin;

my $sin = PNI::Node::Perlfunc::Sin->new;

isa_ok $sin, 'PNI::Node::Perlfunc::Sin';
is $sin->label, 'sin', 'label';

my $in  = $sin->in;
my $out = $sin->out;

$sin->task;
is $out->data, undef, 'default task';

my $a = rand(100);
my $b = sin($a);

$sin->in->data($a);
$sin->task;
is $b, $sin->out->data, 'b = sin( a )';

