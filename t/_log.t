use strict;
use warnings;
use Test::More tests => 5;

use PNI::Node::Perlfunc::Log;

my $log = PNI::Node::Perlfunc::Log->new;

isa_ok $log, 'PNI::Node::Perlfunc::Log';
is $log->label, 'log', 'label';

my $in  = $log->in;
my $out = $log->out;

$log->task;
is $out->data, undef, 'default task';

my $a = rand(100);
my $b = log($a);

$log->in->data($a);
$log->task;
is $b, $log->out->data, 'b = log( a )';

$log->in->data(-1);
is $log->task, undef, ' log( -1 )';

