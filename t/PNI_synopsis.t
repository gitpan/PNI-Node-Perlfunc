use strict;
use Test::More tests => 1;

ok 1;

use PNI ':-D';    # imports node, edge and task

my $node = node 'Perlfunc::Print';
$node->get_input('list')->set_data('Hello World !');
$node->get_input('do_print')->set_data(1);

task;             # prints Hello World !
