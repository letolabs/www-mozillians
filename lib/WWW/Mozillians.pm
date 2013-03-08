package WWW::Mozillians;
use Moose;
use methods;
use LWP::UserAgent;
# ABSTRACT: Perl interface to the Mozillians API

has 'debug'       => (is => 'rw', isa => 'Bool',   default    => 0);
has 'api_key'     => (is => 'ro', isa => 'Str',    required   => 1);
has 'api_base'    => (is => 'ro', isa => 'Str',    lazy_build => 1);
has 'ua'          => (is => 'ro', isa => 'Object', lazy_build => 1);

method _build_api_base { 'https://mozillians.org/api/v1/' }

method _build_ua {
    my $ua = LWP::UserAgent->new;
    $ua->agent("WWW::Mozillians");
    return $ua;
}

__PACKAGE__->meta->make_immutable;
