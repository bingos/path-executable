use strict;
use inc::Module::Install;
name 'Path-Executable';
author 'Chris Williams';
version_from 'lib/Path/Executable.pm';
abstract_from 'lib/Path/Executable.pm';
readme_from 'lib/Path/Executable.pm';
license 'perl';
perl_version '5.006';
build_requires 'Test::More' => 0.47;
requires 'File::Spec' => 0;
auto_license;
githubmeta;
auto_provides;
WriteAll();
