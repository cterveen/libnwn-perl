package NWN::2da::spec::clsatk;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_atk";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/AttackBonusTable";
  $self->{label} = "BAB";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{BAB} = {
    "reference" => "",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clsatk

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_atk_1.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_atk_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_atk_*.2da

=cut

1;
