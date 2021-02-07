package NWN::2da::spec::clsspkn;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_spkn";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/SpellKnownTable";
  $self->{label} = "Level";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Level} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel0} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel1} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel2} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel3} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel4} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel5} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel6} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel7} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel8} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{SpellLevel9} = {
    "reference" => "",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clsspkn

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_spkn_sorc.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_spkn_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_spkn_*.2da

=cut

1;
