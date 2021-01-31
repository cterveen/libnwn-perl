package NWN::2da::spec::armor;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "armor";
  $self->{maxrows} = 0;
  $self->{parent} = "";
  $self->{label} = "[id]";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{ACBONUS} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{DEXBONUS} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{ACCHECK} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{"ARCANEFAILURE%"} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WEIGHT} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{COST} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{DESCRIPTIONS} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{BASEITEMSTATREF} = {
    "reference" => "",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::armor

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("armor.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the armor.2da file. Do not call
    this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
