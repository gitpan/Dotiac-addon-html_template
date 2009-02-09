package Dotiac::DTL::Addon::html_template::Variable;
use strict;
use warnings;

use base qw/Dotiac::DTL::Variable/;

sub new {
	my $class=shift;
	my $self={p=>shift()};
	bless $self,$class;
	$self->{name}=shift;
	$self->{filters}=shift;
	return $self;
}

sub next {
	my $self=shift;
	$self->{n}=shift;
}

1;

__END__

=head1 NAME

Dotiac::DTL::Addon::html_template::Variable - Custom variable tag for Dotiac::DTL::Addon::html_template

=head1 SYNOPSIS

	my $var=Dotiac::DTL::Addon::html_template::Variable->new("",$name,\@filters);
	$var->next(Dotiac::DTL::Tag->new("");

=head1 DESCRIPTION

Excatly the same as Dotiac::DTL::Variable, but has a next method.

=head1 SEE ALSO

L<Dotiac::DTL>, L<Dotiac::DTL::Addon>, L<http://www.dotiac.com>, L<http://www.djangoproject.com>

=head1 AUTHOR

Marc-Sebastian Lucksch

perl@marc-s.de

=cut
