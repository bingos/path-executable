use strict;
use warnings;
use Path::Executable;
my $search = shift || die;
print $_, "\n" for path_exe $search;
