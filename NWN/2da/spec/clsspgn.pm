package NWN::2da::spec::clsspgn;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_spgn";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/SpellGainTable";
  $self->{label} = "Level";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Level} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{NumSpellLevels} = {
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

    NWN::2da::spec::clsspgn

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_spgn_wiz.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_spgn_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_atk_*.2da

=cut

1;
