package NWN::2da::spec::classes;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "classes";

  $self->{header}->{"[id]"}->{datatype} = "int";
  $self->{header}->{Label}->{datatype} = "string";
  $self->{header}->{Name}->{datatype} = "int";
  $self->{header}->{Plural}->{datatype} = "int";
  $self->{header}->{Lower}->{datatype} = "int";
  $self->{header}->{Description}->{datatype} = "int";
  $self->{header}->{Icon}->{datatype} = "string";
  $self->{header}->{HitDie}->{datatype} = "int";
  $self->{header}->{AttackBonusTable}->{datatype} = "string";
  $self->{header}->{FeatsTable}->{datatype} = "string";
  $self->{header}->{SavingThrowTable}->{datatype} = "string";
  $self->{header}->{SkillsTable}->{datatype} = "string";
  $self->{header}->{BonusFeatsTable}->{datatype} = "string";
  $self->{header}->{SkillPointBase}->{datatype} = "int";
  $self->{header}->{SpellGainTable}->{datatype} = "string";
  $self->{header}->{SpellKnownTable}->{datatype} = "string";
  $self->{header}->{PlayerClass}->{datatype} = "bool";
  $self->{header}->{SpellCaster}->{datatype} = "bool";
  $self->{header}->{Str}->{datatype} = "int";
  $self->{header}->{Dex}->{datatype} = "int";
  $self->{header}->{Con}->{datatype} = "int";
  $self->{header}->{Wis}->{datatype} = "int";
  $self->{header}->{Int}->{datatype} = "int";
  $self->{header}->{Cha}->{datatype} = "int";
  $self->{header}->{PrimaryAbil}->{datatype} = "string";
  $self->{header}->{AlignRestrict}->{datatype} = "hex";
  $self->{header}->{AlignRstrctType}->{datatype} = "hex";
  $self->{header}->{InvertRestrict}->{datatype} = "bool";
  $self->{header}->{Constant}->{datatype} = "string";
  $self->{header}->{EffCRLvl01}->{datatype} = "int";
  $self->{header}->{EffCRLvl02}->{datatype} = "int";
  $self->{header}->{EffCRLvl03}->{datatype} = "int";
  $self->{header}->{EffCRLvl04}->{datatype} = "int";
  $self->{header}->{EffCRLvl05}->{datatype} = "int";
  $self->{header}->{EffCRLvl06}->{datatype} = "int";
  $self->{header}->{EffCRLvl07}->{datatype} = "int";
  $self->{header}->{EffCRLvl08}->{datatype} = "int";
  $self->{header}->{EffCRLvl09}->{datatype} = "int";
  $self->{header}->{EffCRLvl10}->{datatype} = "int";
  $self->{header}->{EffCRLvl11}->{datatype} = "int";
  $self->{header}->{EffCRLvl12}->{datatype} = "int";
  $self->{header}->{EffCRLvl13}->{datatype} = "int";
  $self->{header}->{EffCRLvl14}->{datatype} = "int";
  $self->{header}->{EffCRLvl15}->{datatype} = "int";
  $self->{header}->{EffCRLvl16}->{datatype} = "int";
  $self->{header}->{EffCRLvl17}->{datatype} = "int";
  $self->{header}->{EffCRLvl18}->{datatype} = "int";
  $self->{header}->{EffCRLvl19}->{datatype} = "int";
  $self->{header}->{EffCRLvl20}->{datatype} = "int";
  $self->{header}->{PreReqTable}->{datatype} = "string";
  $self->{header}->{MaxLevel}->{datatype} = "int";
  $self->{header}->{XPPenalty}->{datatype} = "bool";
  $self->{header}->{ArcSpellLvlMod}->{datatype} = "int";
  $self->{header}->{DivSpellLvlMod}->{datatype} = "int";
  $self->{header}->{EpicLevel}->{datatype} = "int";
  $self->{header}->{Package}->{datatype} = "int";
  $self->{header}->{StatGainTable}->{datatype} = "string";
  $self->{header}->{MemorizesSpells}->{datatype} = "bool";
  $self->{header}->{SpellbookRestricted}->{datatype} = "bool";
  $self->{header}->{PickDomains}->{datatype} = "bool";
  $self->{header}->{PickSchool}->{datatype} = "bool";
  $self->{header}->{LearnScroll}->{datatype} = "bool";
  $self->{header}->{Arcane}->{datatype} = "bool";
  $self->{header}->{ASF}->{datatype} = "bool";
  $self->{header}->{SpellcastingAbil}->{datatype} = "string";
  $self->{header}->{SpellTableColumn}->{datatype} = "string";
  $self->{header}->{CLMultiplier}->{datatype} = "float";
  $self->{header}->{MinCastingLevel}->{datatype} = "int";
  $self->{header}->{MinAssociateLevel}->{datatype} = "int";
  $self->{header}->{CanCastSpontaneously}->{datatype} = "bool";

  bless($self, $class);
}

=head1 NAME

    NWN::2da::classes

=head1 SYNOPSIS

    my $tda_classes = NWN::2da::Classes->new()

    print $tda_classes->{header}->{Name}->{description};

=head1 DESCRIPTION

    Info on the classes.2da file.

=head1 MORE INFO

    https://nwn.wiki/display/NWN1/classes.2da


=cut

1;
