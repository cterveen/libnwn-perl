package NWN::2da::spec::baseitems;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "baseitems";
  $self->{maxrows} = 256;
  $self->{parent} = "";
  $self->{label} = "label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{InvSlotWidth} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{InvSlotHeight} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{EquipableSlots} = {
    "reference" => "",
    "format" => ["hex"],
  };
  $self->{header}->{CanRotateIcon} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{ModelType} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ItemClass} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{GenderSpecific} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Part1EnvMap} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Part2EnvMap} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{Part3EnvMap} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{DefaultModel} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{DefaultIcon} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{Container} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{WeaponWield} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeaponType} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeaponSize} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{RangedWeapon} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{PrefAttackDist} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{MinRange} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MaxRange} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{NumDice} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{DieToRoll} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{CritThreat} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{CritHitMult} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Category} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{BaseCost} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{Stacking} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ItemMultiplier} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{Description} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{InvSoundType} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MaxProps} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MinProps} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{PropColumn} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{StorePanel} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ReqFeat0} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{ReqFeat1} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{ReqFeat2} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{ReqFeat3} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{ReqFeat4} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{AC_Enchant} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{BaseAC} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ArmorCheckPen} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{BaseItemStatRef} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{ChargesStarting} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{RotateOnGround} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{TenthLBS} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeaponMatType} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{AmmunitionType} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{QBBehaviour} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ArcaneSpellFailure} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{"%AnimSlashL"} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{"%AnimSlashR"} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{"%AnimSlashS"} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{StorePanelSort} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ILRStackSize} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeaponFocusFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{EpicWeaponFocusFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{WeaponSpecializationFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{EpicWeaponSpecializationFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{WeaponImprovedCriticalFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{EpicWeaponOverwhelmingCriticalFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{EpicWeaponDevastatingCriticalFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };
  $self->{header}->{WeaponOfChoiceFeat} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::baseitems

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("baseitems.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the baseitems.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/baseitems.2da

=cut

1;
