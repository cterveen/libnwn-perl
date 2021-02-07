package NWN::2da::spec::creaturesize;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "creaturesize";
  $self->{maxrows} = 0;
  $self->{parent} = "appearance.2da";
  $self->{label} = "LABEL";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ACATTACKMOD} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{STRREF} = {
    "reference" => "tlk",
    "format" => ["int", "min", 0],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::creaturesize

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("creaturesize.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the creaturesize.2da file. Do
    not call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Creaturesize.2da

=cut

1;
