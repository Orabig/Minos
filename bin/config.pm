package Config;

use fields 'test';

#
# Basic class for simple data persistance (without perl modules)
#
sub new {
	my($class) = @_;
	$self = fields::new($class);
	return $self;
}

sub persist {
	my($self,$filename) = @_;
	open OUT,">$filename" || die "Cannot persist config in $filename";
	print OUT 'our $CONFIG = Config->new();';
	foreach $key (keys %$self) {
		my $value=$self->{$key};
		print OUT "\$CONFIG{'$key'}='$value';";
	}
	close OUT;
}

1;
