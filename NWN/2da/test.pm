package NWN::2da::spec::classes;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "classes";
  $self->{maxrows} = 254;
  $self->{child} = 0;

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

  $self->{header}->{"[id]"}->{reference} = "";
  $self->{header}->{Label}->{reference} = "";
  $self->{header}->{Name}->{reference} = "tlk";
  $self->{header}->{Plural}->{reference} = "tlk";
  $self->{header}->{Lower}->{reference} = "tlk";
  $self->{header}->{Description}->{reference} = "tlk";
  $self->{header}->{Icon}->{reference} = "texture";
  $self->{header}->{HitDie}->{reference} = "";
  $self->{header}->{AttackBonusTable}->{reference} = "2da";
  $self->{header}->{FeatsTable}->{reference} = "2da";
  $self->{header}->{SavingThrowTable}->{reference} = "2da";
  $self->{header}->{SkillsTable}->{reference} = "2da";
  $self->{header}->{BonusFeatsTable}->{reference} = "2da";
  $self->{header}->{SkillPointBase}->{reference} = "";
  $self->{header}->{SpellGainTable}->{reference} = "2da";
  $self->{header}->{SpellKnownTable}->{reference} = "2da";
  $self->{header}->{PlayerClass}->{reference} = "";
  $self->{header}->{SpellCaster}->{reference} = "";
  $self->{header}->{Str}->{reference} = "";
  $self->{header}->{Dex}->{reference} = "";
  $self->{header}->{Con}->{reference} = "";
  $self->{header}->{Wis}->{reference} = "";
  $self->{header}->{Int}->{reference} = "";
  $self->{header}->{Cha}->{reference} = "";
  $self->{header}->{PrimaryAbil}->{reference} = "";
  $self->{header}->{AlignRestrict}->{reference} = "";
  $self->{header}->{AlignRstrctType}->{reference} = "";
  $self->{header}->{InvertRestrict}->{reference} = "";
  $self->{header}->{Constant}->{reference} = "";
  $self->{header}->{EffCRLvl01}->{reference} = "";
  $self->{header}->{EffCRLvl02}->{reference} = "";
  $self->{header}->{EffCRLvl03}->{reference} = "";
  $self->{header}->{EffCRLvl04}->{reference} = "";
  $self->{header}->{EffCRLvl05}->{reference} = "";
  $self->{header}->{EffCRLvl06}->{reference} = "";
  $self->{header}->{EffCRLvl07}->{reference} = "";
  $self->{header}->{EffCRLvl09}->{reference} = "";
  $self->{header}->{EffCRLvl10}->{reference} = "";
  $self->{header}->{EffCRLvl11}->{reference} = "";
  $self->{header}->{EffCRLvl12}->{reference} = "";
  $self->{header}->{EffCRLvl13}->{reference} = "";
  $self->{header}->{EffCRLvl14}->{reference} = "";
  $self->{header}->{EffCRLvl15}->{reference} = "";
  $self->{header}->{EffCRLvl16}->{reference} = "";
  $self->{header}->{EffCRLvl17}->{reference} = "";
  $self->{header}->{EffCRLvl18}->{reference} = "";
  $self->{header}->{EffCRLvl19}->{reference} = "";
  $self->{header}->{EffCRLvl20}->{reference} = "";
  $self->{header}->{PreReqTable}->{reference} = "2da";
  $self->{header}->{MaxLevel}->{reference} = "";
  $self->{header}->{XPPenalty}->{reference} = "";
  $self->{header}->{ArcSpellLvlMod}->{reference} = "";
  $self->{header}->{DivSpellLvlMod}->{reference} = "";
  $self->{header}->{EpicLevel}->{reference} = "";
  $self->{header}->{Package}->{reference} = "row/packages.2da";
  $self->{header}->{StatGainTable}->{reference} = "2da";
  $self->{header}->{MemorizesSpells}->{reference} = "";
  $self->{header}->{SpellbookRestricted}->{reference} = "";
  $self->{header}->{PickDomains}->{reference} = "";
  $self->{header}->{PickSchool}->{reference} = "";
  $self->{header}->{LearnScroll}->{reference} = "";
  $self->{header}->{Arcane}->{reference} = "";
  $self->{header}->{ASF}->{reference} = "";
  $self->{header}->{SpellcastingAbil}->{reference} = "";
  $self->{header}->{SpellTableColumn}->{reference} = "header/spells.2da";
  $self->{header}->{CLMultiplier}->{reference} = "";
  $self->{header}->{MinCastingLevel}->{reference} = "";
  $self->{header}->{MinAssociateLevel}->{reference} = "";
  $self->{header}->{CanCastSpontaneously}->{reference} = "";


  bless($self, $class);
}

sub child {
  my $self = shift;

  return $self->{child};
}

sub datatype {
  my $self = shift;
  my $header = shift;
  
  if (!exists($self->{header}->{$header}->{datatype})) {
    return "";
  }
  return $self->{header}->{$header}->{datatype};
}

sub maxrows {
  my $self = shift;

  return $self->{maxrows};
}

sub reference {
  my $self = shift;
  my $header = shift;

  if (!exists($self->{header}->{$header}->{reference})) {
    return "";
  }
  return $self->{header}->{$header}->{reference};
}


=head1 NAME

    NWN::2da::classes

=head1 SYNOPSIS

    my $tda_classes = NWN::2da::classes->new()

    print $tda_classes->{header}->{Name}->{description};

=head1 DESCRIPTION

    This module contains the specification of the classes.2da file.

=head1 METHODS

=over

=item child()

    Returns 0 if the file is a parent and 1 if the file is a child. Parent
    files contain info on themselves while children contain reference from
    these files. Children without a parent are orphans.

=item datatype($header)

    Returns a string of with the datatype of the header. One of bool, int,
    float, hex or string.

=item maxrows()

    Return a string with the maximum number of rows or 0 when there in no
    maximum.

=item reference()
    Returns a string with a reference for the header. The reference can be one
    of the following forms: 'tlk' as reference to the TLK table, '2da' as
    reference to a 2da file, 'header{file}.2da', 'row/{file}.2da' as a
    reference to a header or row in the given 2da file.

=back

=head1 MORE INFO

    https://nwn.wiki/display/NWN1/classes.2da


=cut

1;
