use strict;
use warnings;

package App::Base64::Command::decode;

# ABSTRACT: Handle the decoding side of Base64

use App::Base64 -command;
use MIME::Base64 qw(decode_base64);

sub execute {
	my $self = shift;
	
	while (<STDIN>)
	{
		print decode_base64($_);
	}
}
