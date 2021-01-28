package NWN::2da::spec::feat;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "feat";
  $self->{maxrows} = 0;
  $self->{parent} = "";
  $self->{label} = "LABEL";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{FEAT} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{DESCRIPTION} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{ICON} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{MINATTACKBONUS} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MINSTR} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MINDEX} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MININT} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MINWIS} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MINCON} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MINCHA} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MINSPELLLVL} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{PREREQFEAT1} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{PREREQFEAT2} = {
    "reference" => "",
    "format" => ["row/feat.2da"],
  };
  $self->{header}->{GAINMULTIPLE} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{EFFECTSSTACK} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{ALLCLASSESCANUSE} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{CATEGORY} = {
    "reference" => "row/categories.2da",
    "format" => ["int"],
  };
  $self->{header}->{MAXCR} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SPELLID} = {
    "reference" => "row/spells.2da",
    "format" => ["int"],
  };
  $self->{header}->{SUCCESSOR} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{CRValue} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{USESPERDAY} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MASTERFEAT} = {
    "reference" => "row/masterfeats.2da",
    "format" => ["int"],
  };
  $self->{header}->{TARGETSELF} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{OrReqFeat0} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{OrReqFeat1} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{OrReqFeat2} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{OrReqFeat3} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{OrReqFeat4} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{REQSKILL} = {
    "reference" => "row/skills.2da",
    "format" => ["int"],
  };
  $self->{header}->{ReqSkillMinRanks} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{REQSKILL2} = {
    "reference" => "row/skills.2da",
    "format" => ["int"],
  };
  $self->{header}->{ReqSkillMinRanks2} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Constant} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{TOOLSCATEGORIES} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{HostileFeat} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MinLevel} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MinLevelClass} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MaxLevel} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MinFortSave} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{PreReqEpic} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{ReqAction} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::featf

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("featf.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the feat.2da file. Do not call
    this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/feat.2da

=cut

1;
