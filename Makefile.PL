use strict;
use warnings;
use ExtUtils::MakeMaker;

my $name = 'Unicode::Diacritic::Strip';
my $pm = "lib/$name.pm";
$pm =~ s!::!/!g;
my $pod = $pm;
$pod =~ s!\.pm$!.pod!g;
my $repo = "https://github.com/benkasminbullock/$name";
$repo =~ s!::!-!g;

WriteMakefile (
    NAME => $name,
    VERSION_FROM => $pm,
    ABSTRACT_FROM => $pod,
    AUTHOR => 'Ben Bullock <bkb@cpan.org>',
    LICENSE => 'perl',
    PREREQ_PM => {
    },
    META_MERGE => {
        resources => {
            repository => $repo,
            bugtracker => "$repo/issues",
        },
    },
    MIN_PERL_VERSION => '5.008009',
);
