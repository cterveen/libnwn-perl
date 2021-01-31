package NWN::2da::spec::packages;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "packages";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da";
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
  $self->{header}->{ClassID} = {
    "reference" => "row/classes.2da",
    "format" => ["int"],
  };
  $self->{header}->{Attribute} = {
    "reference" => "",
    "format" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };
  $self->{header}->{Gold} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{School} = {
    "reference" => "row/spellschools.2da",
    "format" => ["int"],
  };
  $self->{header}->{Domain1} = {
    "reference" => "row/domains.2da",
    "format" => ["int"],
  };
  $self->{header}->{Domain2} = {
    "reference" => "row/domains.2da",
    "format" => ["int"],
  };
  # Associate refers to hen_companion.2da or hen_familiar.2da depending on class
  $self->{header}->{Associate} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellPref2DA} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "packsp"],
  };
  $self->{header}->{FeatPref2DA} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "packft"],
  };
  $self->{header}->{SkillPref2DA} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "packsk"],
  };
  $self->{header}->{Equip2DA} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "packeq"],
  };
  $self->{header}->{Soundset} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{PlayerClass} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::packages

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("packages.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the packages.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Packages.2da

=cut

1;
