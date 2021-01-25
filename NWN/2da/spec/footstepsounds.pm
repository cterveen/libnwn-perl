package NWN::2da::spec::footstepsounds;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "footstepsounds";
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
  $self->{header}->{Dirt0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Dirt1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Dirt2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Grass0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Grass1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Grass2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Stone0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Stone1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Stone2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Wood0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Wood1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Wood2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Water0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Water1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Water2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Carpet0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Carpet1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Carpet2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Metal0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Metal1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Metal2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Puddles0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Puddles1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Puddles2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Leaves0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Leaves1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Leaves2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Sand0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Sand1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Sand2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Snow0} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Snow1} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };
  $self->{header}->{Snow2} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs_"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::footstepsounds

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("footstepsounds.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the footstepsounds.2da file. Do
    not call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Footstepsounds.2da

=cut

1;
