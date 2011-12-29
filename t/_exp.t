use strict;
use warnings;
use Test::More tests => 4;

use PNI::Node::Perlfunc::Exp;

my $exp = PNI::Node::Perlfunc::Exp->new;

isa_ok $exp, 'PNI::Node::Perlfunc::Exp';
is $exp->label, 'exp', 'label';

my $in  = $exp->in;
my $out = $exp->out;

$exp->task;
is $out->data, undef, 'default task';

my $a = rand(5);
my $b = exp($a);

$exp->in->data($a);
$exp->task;
is $b, $exp->out->data, 'b = exp( a )';


