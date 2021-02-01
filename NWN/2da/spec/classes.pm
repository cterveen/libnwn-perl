package NWN::2da::spec::classes;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "classes";
  $self->{maxrows} = 254;
  $self->{parent} = "";
  $self->{label} = "Label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 254],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Plural} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Lower} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Description} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Icon} = {
    "reference" => "texture",
    "format" => ["string", "prefix", "ir_"],
  };
  $self->{header}->{HitDie} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{AttackBonusTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_atk_"],
  };
  $self->{header}->{FeatsTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_feat_"],
  };
  $self->{header}->{SavingThrowTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_savthr_"],
  };
  $self->{header}->{SkillsTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_skill_"],
  };
  $self->{header}->{BonusFeatsTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_bfeat_"],
  };
  $self->{header}->{SkillPointBase} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{SpellGainTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_spgn_"],
  };
  $self->{header}->{SpellKnownTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_spkn_"],
  };
  $self->{header}->{PlayerClass} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{SpellCaster} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Str} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Dex} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Con} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Wis} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Int} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Cha} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{PrimaryAbil} = {
    "reference" => "",
    "format" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };
  $self->{header}->{AlignRestrict} = {
    "reference" => "hex/non-neutral/non-lawful/non-chaotic/non-good/non-evil",
    "format" => ["hex"],
  };
  $self->{header}->{AlignRstrctType} = {
    "reference" => "hex/law-chaos/good-evil",
    "format" => ["hex"],
  };
  $self->{header}->{InvertRestrict} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Constant} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{EffCRLvl01} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl02} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl03} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl04} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl05} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl06} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl07} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl08} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl09} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl10} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl11} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl12} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl13} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl14} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl15} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl16} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl17} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl18} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl19} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl20} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{PreReqTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_pres_"],
  };
  $self->{header}->{MaxLevel} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 40],
  };
  $self->{header}->{XPPenalty} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{ArcSpellLvlMod} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{DivSpellLvlMod} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{EpicLevel} = {
    "reference" => "",
    "format" => ["int", "min", -1],
  };
  $self->{header}->{Package} = {
    "reference" => "row/packages.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{StatGainTable} = {
    "reference" => "2da",
    "format" => ["string", "prefix", "cls_stat_"],
  };
  $self->{header}->{MemorizesSpells} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{SpellbookRestricted} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{PickDomains} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{PickSchool} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{LearnScroll} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Arcane} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{ASF} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{SpellcastingAbil} = {
    "reference" => "",
    "format" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };
  $self->{header}->{SpellTableColumn} = {
    "reference" => "header/spells.2da",
    "format" => ["string"],
  };
  $self->{header}->{CLMultiplier} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{MinCastingLevel} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{MinAssociateLevel} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 255],
  };
  $self->{header}->{CanCastSpontaneously} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::classes

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("classes.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the classes.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/classes.2da

=cut

1;
