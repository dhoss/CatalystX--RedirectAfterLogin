
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'RedirectAfterLogin',
  NAME      => 'RedirectAfterLogin',
  AUTHOR    => 'Devin\ Austin\ \<dhoss\@cpan\.org\>',
  ABSTRACT  => 'redirect to the previous page after logging in',
  VERSION   => '0.001',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Moose::Role" => '0.087',
  },
);
