package Acme::BooK::Is::My::Bitch;

use 5.006;
use warnings;
use strict;

use Acme::MetaSyntactic;

our $VERSION = '0.01';

# ###### Implementation ###########

sub new {
    my $self = shift;

    my $object = {};

    return bless $object, $self;
}

my %methods = (
    'tell_the_truth' => [
        'You know, my favorite pornstar is definitely %s.', 'pornstars', 1
    ],
    'thats_nothing' => [
        'Oh, that\'s nothing! You should\'ve seen what I auctioned in %s!',
        'yapc', 1
    ],
    'code' => [
        'You know, I wrote some code for the %s space mission, but it was rejected for its lack of clarity...',
        'space_missions',
        1
    ],
    'next_talk' => [
        'My next lightning talk will be called "%s! %s!! %s!!!"',
        'batman', 3
    ],
    'next_yapc' => [ 'I think the next YAPC should be on %s!', 'planets', 1 ],
    'sql' => [ 'I think we can solve that with a %s %s %s', 'sql', 3 ],
    'twisted_perl' => [
        'I\'m pretty sure I could do that just by using %s and %s',
        'opcodes', 2
    ],
    'words_of_wisdom' => [
        'My grandfather once told me: ' . join( " ", ('%s') x 7 ),
        'loremipsum', 7
    ],
);

for my $method ( keys %methods ) {
    my ( $template, $theme, $qty ) = @{ $methods{$method} };
    no strict 'refs';
    *{$method}
        = sub { return sprintf( $template, metaname( $theme => $qty ) ) };
}

sub random_quote {
    my $self = shift;

    no strict 'refs';

    my @methods = (
        grep { !/^(?:_.*|BEGIN|metaname|new)$/ }
            keys %{"Acme::BooK::Is::My::Bitch::"}
    );

    my $method = $methods[ rand @methods ];

    return $self->$method();
}

# ###### Utility subs #############

sub _aux {

}

1;    # Magic true value required at end of module

__END__

=head1 NAME

Acme-BooK-Is-My-Bitch - BooK is my Bitch

=head1 VERSION

This document describes Acme-BooK-Is-My-Bitch version 0.01.

=head1 SYNOPSIS

    use Acme::BooK::Is::My::Bitch;

    my $book = Acme::BooK::Is::My::Bitch->new();

    my $quote = $book->random_quote();
  
=head1 DESCRIPTION

Acme::BooK::Is::My::Bitch has a great story behind it.

At YAPC::EU::2006, in Birmingham, England, BooK auctioned the right
for someone to pick a module from CPAN and have that module's name
(temporarily) tattoed in his arm for all the conferences BooK would go
to during 2007.

Cog asked if the module had to exist by that time, and BooK said "No."

BIG MISTAKE!

=head1 INTERFACE 

=head2 Program Interface

=head3 new

Creates a new Acme::BooK::Is::My::Bitch object.

    my $book = Acme::BooK::Is::My::Bitch->new();

=head2 Module Interface

=head3 code

BooK is really clever.

=head3 next_talk

BooK is known to auto-generate the names of his lightning talks.

=head3 next_yapc

BooK has something to say about the place the next YAPC::EU is going to be.

=head3 sql

BooK claims he's not an SQL guru.

=head3 tell_the_truth

BooK has the pornstars theme on Acme::MetaSyntactic. There must be a reason.

=head3 thats_nothing

BooK has the craziest ideas ever for auctions.

=head3 twisted_perl

BooK is known to write very obfuscated code.

=head3 words_of_wisdom

BooK claims he got a lot of wisdom from his grandfather.

=head3 random_quote

To tell you the truth, no one really knows what BooK is going to say next.

=head1 CONFIGURATION AND ENVIRONMENT

Acme-BooK-Is-My-Bitch requires no configuration files or environment variables.

=head1 DEPENDENCIES

=over 

=item *

Acme::MetaSyntactic

=back

=head1 FUTURE

=over 

=item *

BooK is still growing. This module will evolve as BooK's arms grow.

=back

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

=head1 AUTHOR

Jose Castro  C<< <cog@cpan.org> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2005, Jose Castro C<< <cog@cpan.org> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

