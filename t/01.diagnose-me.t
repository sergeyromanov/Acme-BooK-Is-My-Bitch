use Test::More tests => 2;

BEGIN {
use_ok( 'Acme::BooK::Is::My::Bitch' );
}

my $book = Acme::BooK::Is::My::Bitch->new();

isa_ok( $book, 'Acme::BooK::Is::My::Bitch' );

diag( "Things that BooK could say:\n\n" );

for ( grep { !/^(?:_.*|metaname|new)$/ } keys %{"Acme::BooK::Is::My::Bitch::"}     ) {
    next unless defined &{"Acme::BooK::Is::My::Bitch::$_"};
    diag( '"' . $book->$_ . '"' );
}

diag( "\n\n" );
