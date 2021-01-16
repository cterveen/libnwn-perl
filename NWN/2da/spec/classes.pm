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
    "reference" => "",
    "format" => ["hex"],
  };
  $self->{header}->{AlignRstrctType} = {
    "reference" => "",
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


sub format {
  my $self = shift;
  my $header = shift;
  
  if (!exists($self->{header}->{$header}->{format})) {
    return ["unknown header"];
  }
  return $self->{header}->{$header}->{format}; 
}

sub label {
  my $self = shift;

  return $self->{label};
}

sub maxrows {
  my $self = shift;

  return $self->{maxrows};
}

sub parent {
  my $self = shift;

  return $self->{parent};
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

=item format($header)

    Returns an array reference consisting of the following items: [0] datatype
    [1] test [2]... values for the test.

    Datatype is one of string, int or bool. Test is either min, minmax, prefix
    or choose. 

    When test is min the next item in the list is the minimum value. For minmax
    the next two values are the minumum and maximum respecively. When test is
    prefix the next item is the prefix in lower case. On choose the next items
    are the valid options in lower case.

=item label()

    Retuns a string with the header that is used as a label.

=item maxrows()

    Return a string with the maximum number of rows or 0 when there in no
    maximum.

=item parent()

    Return a string with a reference to a parent file and a header:
    {file}/{header}. If the file is a base file the string will be empty.

=item reference($header)

    Returns a string with a reference for the header. The reference can be one
    of the following forms: 'tlk' as reference to the TLK table, '2da' as
    reference to a 2da file, 'header{file}.2da', 'row/{file}.2da' as a
    reference to a header or row in the given 2da file.


  

=back

=head1 MORE INFO

    https://nwn.wiki/display/NWN1/classes.2da


=cut

1;
