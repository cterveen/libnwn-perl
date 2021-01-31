package NWN::2da::spec::clsstat;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_stat";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/StatGainTable";
  $self->{label} = "Level";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Level} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Str} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Dex} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Con} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Wis} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Int} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Cha} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{NaturalAC} = {
    "reference" => "",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clsstat

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_stat_dradis.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_stat_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
