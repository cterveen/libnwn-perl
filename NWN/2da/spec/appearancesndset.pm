package NWN::2da::spec::appearancesndset;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "appearancesnd";
  $self->{maxrows} = 0;
  $self->{parent} = "appearance.2da";
  $self->{label} = "Label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ArmorType} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{WeapTypeL} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeapTypeR} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeapTypeS} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeapTypeClsLw} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeapTypeClsH} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{WeapTypeRch} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{MissIndex} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Looping} = {
    "reference" => "",
    "format" => ["string", "prefix", "fs"],
  };
  $self->{header}->{FallFwd} = {
    "reference" => "",
    "format" => ["string", "prefix", "bf"],
  };

  $self->{header}->{FallBck} = {
    "reference" => "",
    "format" => ["string", "prefix", "bf"],
  };


  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::appearancesndset

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("appearancesndset.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the appearancesndset.2da file. Do
    not call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
