package NWN::2da::spec::classes;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "classes";
  $self->{maxrows} = 254;
  $self->{parent} = "";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 254],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "value" => ["string"],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "value" => ["int"],
  };
  $self->{header}->{Plural} = {
    "reference" => "tlk",
    "value" => ["int"],
  };
  $self->{header}->{Lower} = {
    "reference" => "tlk",
    "value" => ["int"],
  };
  $self->{header}->{Description} = {
    "reference" => "tlk",
    "value" => ["int"],
  };
  $self->{header}->{Icon} = {
    "reference" => "texture",
    "value" => ["string", "prefix", "ir_"],
  };
  $self->{header}->{HitDie} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{AttackBonusTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_atk_"],
  };
  $self->{header}->{FeatsTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_feat_"],
  };
  $self->{header}->{SavingThrowTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_savthr_"],
  };
  $self->{header}->{SkillsTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_skill_"],
  };
  $self->{header}->{BonusFeatsTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_bfeat_"],
  };
  $self->{header}->{SkillPointBase} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{SpellGainTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_spgn_"],
  };
  $self->{header}->{SpellKnownTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_spkn_"],
  };
  $self->{header}->{PlayerClass} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{SpellCaster} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{Str} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Dex} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Con} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Wis} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Int} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{Cha} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 30],
  };
  $self->{header}->{PrimaryAbil} = {
    "reference" => "",
    "value" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };
  $self->{header}->{AlignRestrict} = {
    "reference" => "",
    "value" => ["hex"],
  };
  $self->{header}->{AlignRstrctType} = {
    "reference" => "",
    "value" => ["hex"],
  };
  $self->{header}->{InvertRestrict} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{Constant} = {
    "reference" => "",
    "value" => ["string"],
  };
  $self->{header}->{EffCRLvl01} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl02} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl03} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl04} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl05} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl06} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl07} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl08} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl09} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl10} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl11} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl12} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl13} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl14} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl15} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl16} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl17} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl18} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl19} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EffCRLvl20} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{PreReqTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_pres_"],
  };
  $self->{header}->{MaxLevel} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 40],
  };
  $self->{header}->{XPPenalty} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{ArcSpellLvlMod} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{DivSpellLvlMod} = {
    "reference" => "",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{EpicLevel} = {
    "reference" => "",
    "value" => ["int", "min", -1],
  };
  $self->{header}->{Package} = {
    "reference" => "row/packages.2da",
    "value" => ["int", "min", 0],
  };
  $self->{header}->{StatGainTable} = {
    "reference" => "2da",
    "value" => ["string", "prefix", "cls_stat_"],
  };
  $self->{header}->{MemorizesSpells} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{SpellbookRestricted} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{PickDomains} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{PickSchool} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{LearnScroll} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{Arcane} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{ASF} = {
    "reference" => "",
    "value" => ["bool"],
  };
  $self->{header}->{SpellcastingAbil} = {
    "reference" => "",
    "value" => ["string", "choose", "str", "dex", "con", "wis", "int", "cha"],
  };
  $self->{header}->{SpellTableColumn} = {
    "reference" => "header/spells.2da",
    "value" => ["string"],
  };
  $self->{header}->{CLMultiplier} = {
    "reference" => "",
    "value" => ["float"],
  };
  $self->{header}->{MinCastingLevel} = {
    "reference" => "",
    "value" => ["float"],
  };
  $self->{header}->{MinAssociateLevel} = {
    "reference" => "",
    "value" => ["int", "minmax", 0, 255],
  };
  $self->{header}->{CanCastSpontaneously} = {
    "reference" => "",
    "value" => ["bool"],
  };

  bless($self, $class);
}

sub child {
  my $self = shift;

  return $self->{child};
}

sub value {
  my $self = shift;
  my $header = shift;
  
  if (!exists($self->{header}->{$header}->{value})) {
    return ["unknown header"];
  }
  return $self->{header}->{$header}->{value}; 
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

=item parent()

    Return a string with a reference to a parent file and a header:
    {file}/{header}. If the file is a base file the string will be empty.

=item maxrows()

    Return a string with the maximum number of rows or 0 when there in no
    maximum.

=item reference($header)

    Returns a string with a reference for the header. The reference can be one
    of the following forms: 'tlk' as reference to the TLK table, '2da' as
    reference to a 2da file, 'header{file}.2da', 'row/{file}.2da' as a
    reference to a header or row in the given 2da file.

=item value($header)

    Returns an array reference consisting of the following items: [0] datatype
    [1] test [2]... values for the test.

    Datatype is one of string, int or bool. Test is either min, minmax, prefix
    or choose. 

    When test is min the next item in the list is the minimum value. For minmax
    the next two values are the minumum and maximum respecively. When test is
    prefix the next item is the prefix in lower case. On choose the next items
    are the valid options in lower case.

=back

=head1 MORE INFO

    https://nwn.wiki/display/NWN1/classes.2da


=cut

1;
