package Path::Executable;

use strict;
use warnings;
use File::Spec;

our $VERSION = '0.02';

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(path_exe);

sub path_exe {
  my $exe = shift || return;
  return grep { -e $_ } map { File::Spec->catfile($_,$exe) } File::Spec->path;
}

qq[All your PATH are belong];

__END__

=head1 NAME

Path::Executable - Find the locations in your PATH where commands appear

=head1 SYNOPSIS

  use Path::Executable;

  my @locations = path_exe( 'xml2-config' );

=head1 DESCRIPTION

Path::Executable provides a convenient mechanism for determining if a command exists
in multiple locations within C<$ENV{PATH}>.

=head1 FUNCTIONS

=over

=item C<path_exe>

This function is exported by default, takes a single argument, the name of a command to
look for in C<$ENV{PATH}>. Returns an empty list if the command does not appear in the C<PATH>,
otherwise it will return a list of the full command paths it has found.

=back

=head1 AUTHOR

Chris C<BinGOs> Williams <chris@bingosnet.co.uk>

=head1 LICENSE

Copyright E<copy> Chris Williams

This module may be used, modified, and distributed under the same terms as Perl itself. Please see the license that came with your Perl distribution for details.

=cut
