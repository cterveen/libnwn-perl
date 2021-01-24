package NWN::2da::spec::racialtypes;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "racialtypes";
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
    "format" => ["int", "min", 1],
  };
  $self->{header}->{Abrev} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "format" => ["int", "min", 1],
  };
  $self->{header}->{ConverName} = {
    "reference" => "tlk",
    "format" => ["int", "min", 1],
  };
  $self->{header}->{ConverNameLower} = {
    "reference" => "tlk",
    "format" => ["int", "min", 1],
  };
  $self->{header}->{NamePlural} = {
    "reference" => "tlk",
    "format" => ["int", "min", 1],
  };
  $self->{header}->{Description} = {
    "reference" => "tlk",
    "format" => ["int", "min", 1],
  };
  $self->{header}->{Icon} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Appearance} = {
    "reference" => "row/appearance.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{StrAdjust} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{DexAdjust} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{IntAdjust} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ChaAdjust} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WisAdjust} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ConAdjust} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Endurance} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Favored} = {
    "reference" => "row/classes.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{FeatsTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "race_feat_"],
  };
  $self->{header}->{Biography} = {
    "reference" => "tlk",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{PlayerRace} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Constant} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{AGE} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ToolsetDefaultClass} = {
    "reference" => "row/classes.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{CRModifier} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{NameGenTableA} = {
    "reference" => "ltr",
    "format" => ["string"],
  };
  $self->{header}->{NameGenTableB} = {
    "reference" => "ltr",
    "format" => ["string"],
  };
  $self->{header}->{ExtraFeatsAtFirstLevel} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ExtraSkillPointsPerLevel} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{FirstLevelSkillPointsMultiplier} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{AbilitiesPointBuyNumber} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{NormalFeatEveryNthLevel} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{NumberNormalFeatsEveryNthLevel} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{SkillPointModifierAbility} = {
    "reference" => "",
    "format" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::racialtypes

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("racialtypes.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the racialtypes.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/racialtypes.2da

=cut

1;
