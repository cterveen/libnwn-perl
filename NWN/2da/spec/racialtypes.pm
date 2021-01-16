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

    NWN::2da::racialtypes

=head1 SYNOPSIS

    my $tda_racialtypes = NWN::2da::racialtypes->new()

    print $tda_racialtypes->{header}->{Name}->{description};

=head1 DESCRIPTION

    This module contains the specification of the racialtypes.2da file.

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

    Return a string with the maximum number of rows or 0 when there in no maximum.

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

    https://nwn.wiki/display/NWN1/racialtypes.2da

=cut

1;
