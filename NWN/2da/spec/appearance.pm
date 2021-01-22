package NWN::2da::spec::appearance;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "appearance";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da";
  $self->{label} = "LABEL";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{STRING_REF} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{NAME} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{RACE} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ENVMAP} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{BLOODCOLR} = {
    "reference" => "",
    "format" => ["string", "choose", "r", "g", "w", "y", "n"],
  };
  $self->{header}->{MODELTYPE} = {
    "reference" => "",
    "format" => ["string", "choose", "p", "s", "f", "l", "fwt", "swt", "lwt", "ft", "fw"],
  };
  $self->{header}->{WEAPONSCALE} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{WING_TAIL_SCALE} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{HELMET_SCALE_M} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{HELMET_SCALE_F} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{MOVERATE} = {
    "reference" => "col/creaturespeed.2da/2DAName",
    "format" => ["string"],
  };
  $self->{header}->{WALKDIST} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{RUNDIST} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{PERSPACE} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{CREPERSPACE} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{HEIGHT} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{HITDIST} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{PREFATCKDIST} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{TARGETHEIGHT} = {
    "reference" => "",
    "format" => ["string", "choose", "h", "l"],
  };
  $self->{header}->{ABORTONPARRY} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{RACIALTYPE} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{HASLEGS} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{HASARMS} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{PORTRAIT} = {
    "reference" => "",
    "format" => ["string", "prefix", "po_"],
  };
  $self->{header}->{SIZECATEGORY} = {
    "reference" => "row/sizecategories.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{PERCEPTIONDIST} = {
    "reference" => "row/ranges.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{FOOTSTEPTYPE} = {
    "reference" => "row/footstepsounds.2da",
    "format" => ["int", "min", -1],
  };
  $self->{header}->{SOUNDAPPTYPE} = {
    "reference" => "row/appearancesndset.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{HEADTRACK} = {
    "reference" => "",
    "format" => ["bool"],
  };
  $self->{header}->{HEAD_ARC_H} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 180],
  };
  $self->{header}->{HEAD_ARC_V} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 180],
  };
  $self->{header}->{HEAD_NAME} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{BODY_BAG} = {
    "reference" => "row/bodybag.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{TARGETABLE} = {
    "reference" => "",
    "format" => ["bool",],
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

    This module contains the specification of the classes.2da file.

=head1 METHODS

    Do not call this module directly but use NWN::2dac instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.wiki/display/NWN1/classes.2da

=cut

1;
