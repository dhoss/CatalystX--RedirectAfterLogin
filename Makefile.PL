use inc::Module::Install;

name 'RedirectAfterLogin';
all_from 'lib/RedirectAfterLogin.pm';

build_requires 'Catalyst::Runtime';
build_requires 'Test::WWW::Mechanize::Catalyst';
build_requires 'Test::More';
build_requires 'ok';

WriteAll();
