package NWN::2da::spec::spells;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "spells";
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
  $self->{header}->{IconResRef} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{School} = {
    "reference" => "",
    "format" => ["string", "choose", "a", "c", "d", "e", "v", "i", "n"],
  };
  $self->{header}->{Range} = {
    "reference" => "",
    "format" => ["string", "choose", "p", "t", "s", "m", "l"],
  };
  $self->{header}->{VS} = {
    "reference" => "",
    "format" => ["string", "choose", "v", "s", "vs"],
  };
  $self->{header}->{MetaMagic} = {
    "reference" => "",
    "format" => ["hex"],
  };
  $self->{header}->{TargetType} = {
    "reference" => "",
    "format" => ["hex"],
  };
  $self->{header}->{ImpactScript} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Bard} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{Cleric} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{Druid} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{Paladin} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{Ranger} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{Wiz_Sorc} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{Innate} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 10],
  };
  $self->{header}->{ConjTime} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ConjAnim} = {
    "reference" => "",
    "format" => ["string", "choose", "hand", "head"],
  };
  $self->{header}->{ConjHeadVisual} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ConjHandVisual} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ConjGrndVisual} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ConjSoundVFX} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ConjSoundMale} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ConjSoundFemale} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{CastAnim} = {
    "reference" => "",
    "format" => ["string", "choose", "area", "attack", "out", "self", "touch", "up", "creature"],
  };
  $self->{header}->{CastTime} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{CastHeadVisual} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{CastHandVisual} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{CastGrndVisual} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{CastSound} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Proj} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{ProjModel} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ProjType} = {
    "reference" => "",
    "format" => ["string", "choose", "homing", "balistic", "highbalistic", "burst", "accelerating", "spiral", "linked", "bounce"],
  };
  $self->{header}->{ProjSpwnPoint} = {
    "reference" => "",
    "format" => ["string", "choose", "hand", "monster0", "monster1", "monster2", "monster3", "monster4"],
  };
  $self->{header}->{ProjSound} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ProjOrientation} = {
    "reference" => "",
    "format" => ["string", "choose", "path", "traget"],
  };
  $self->{header}->{ImmunityType} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ItemImmunity} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{SubRadSpell1} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{SubRadSpell2} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{SubRadSpell3} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{SubRadSpell4} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{SubRadSpell5} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{Category} = {
    "reference" => "row/categories.2da",
    "format" => ["int"],
  };
  $self->{header}->{Master} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{UserType} = {
    "reference" => "",
    "format" => ["int", "minmax", 1, 4],
  };
  $self->{header}->{SpellDesc} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{UseConcentration} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpontaneouslyCast} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{AltMessage} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{HostileSetting} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{FeatID} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{Counter1} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{Counter2} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{HasProjectile} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::spells

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("spells.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the spells.2da file. Do not call 
    this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/spells.2da

=cut

1;
