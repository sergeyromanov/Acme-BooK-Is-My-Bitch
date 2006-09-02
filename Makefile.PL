require 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Acme-BooK-Is-My-Bitch',
    AUTHOR            => 'Jose Castro <cog@cpan.org>',
    VERSION_FROM      => 'lib/Acme/BooK/Is/My/Bitch.pm',
    PL_FILES          => { },
    PREREQ_PM         => {
        'Acme::MetaSyntactic' => '0.89',
    },
    dist              => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean             => { FILES => 'Acme-BooK-Is-My-Bitch-*' },
);
