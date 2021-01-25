package NWN::2da::spec::creaturespeed;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "creaturespeed";
  $self->{maxrows} = 0;
  $self->{parent} = "appearance.2da";
  $self->{label} = "Label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{"2DAName"} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{WALKRATE} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{RUNRATE} = {
    "reference" => "",
    "format" => ["float"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::creaturespeed

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("creaturespeed.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the creaturespeed.2da file. Do
    not call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Creaturespeed.2da

=cut

1;
