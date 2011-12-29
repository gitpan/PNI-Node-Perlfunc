package PNI::Node::Perlfunc::Log;
use PNI::Node::Mo;
extends 'PNI::Node';

sub BUILD {
    my $self = shift;
    $self->label('log');

    $self->in;
    $self->out;
}

sub task {
    my $self = shift;
    my $in   = $self->in;
    my $out  = $self->out;

    $in->is_number or return;
    ( $in->data >= 0 ) or return;

    $out->data( log( $in->data ) );
}

1
