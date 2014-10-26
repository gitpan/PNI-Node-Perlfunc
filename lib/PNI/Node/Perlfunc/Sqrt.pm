package PNI::Node::Perlfunc::Sqrt;
use strict;
use parent 'PNI::Node';

sub init {
    my $node = shift;

    my $in = $node->add_input('in');

    my $out = $node->add_output('out');

    return 1;
}

sub task {
    my $node = shift;

    my $in = $node->get_input('in');

    my $out = $node->get_output('out');

    my $result;

    if ( $in->is_number and $in->get_data >= 0 ) {
        $result = sqrt $in->get_data;
    }

    $out->set_data($result);

    return 1;
}

1;

=head1 NAME

PNI::Node::Perlfunc::Sqrt - PNI node wrapping the Perl C<sqrt> function

=head1 INPUTS

=over 4

=item C<in>

=back

=head1 OUTPUTS

=over 4

=item C<out>

=back

=cut

