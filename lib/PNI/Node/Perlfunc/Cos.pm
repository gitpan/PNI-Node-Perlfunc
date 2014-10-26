package PNI::Node::Perlfunc::Cos;
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

    if ( $in->is_number ) {
        $result = cos $in->get_data;
    }

    $out->set_data($result);

    return 1;
}

1
__END__

=head1 NAME

PNI::Node::Perlfunc::Cos - PNI node wrapping the Perl C<cos> function

=head1 INPUTS

=over 4

=item in

=back

=head1 OUTPUTS

=over 4

=item out

=back

=cut

