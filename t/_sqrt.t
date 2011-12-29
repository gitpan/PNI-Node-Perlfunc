use strict;
use warnings;
use Test::More tests => 5;

use PNI::Node::Perlfunc::Sqrt;

my $sqrt = PNI::Node::Perlfunc::Sqrt->new;

isa_ok $sqrt, 'PNI::Node::Perlfunc::Sqrt';
is $sqrt->label, 'sqrt', 'label';

my $in  = $sqrt->in;
my $out = $sqrt->out;

$sqrt->task;
is $out->data, undef, 'default task';

my $a = rand(100);
my $b = sqrt($a);

$sqrt->in->data($a);
$sqrt->task;
is $b, $sqrt->out->data, 'b = sqrt( a )';

$sqrt->in->data(-1);
is $sqrt->task, undef, ' sqrt( -1 )';


