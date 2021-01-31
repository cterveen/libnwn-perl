package NWN::2da::spec::skills;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "skills";
  $self->{maxrows} = 0;
  $self->{parent} = "";
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
  $self->{header}->{Description} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Icon} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Untrained} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{KeyAbility} = {
    "reference" => "",
    "format" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };
  $self->{header}->{ArmorCheckPenalty} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{AllClassesCanUse} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Category} = {
    "reference" => "row/categories.2da",
    "format" => ["int"],
  };
  $self->{header}->{MaxCR} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{Constant} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{HostileSkill} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::skills

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("skills.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the skills.2da file. Do not call
    this module directly but use the methods on file specification in NWN::2da
    instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/skills.2da

=cut

1;
