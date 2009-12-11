use strict;
use warnings;
use Test::More 'no_plan';
use Cwd;
use File::Spec;
use Path::Executable;
local $ENV{PATH} = getcwd;
my @paths = path_exe 'bollocks';
is( scalar @paths, 0, 'There is no result');
