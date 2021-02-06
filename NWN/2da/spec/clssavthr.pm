package NWN::2da::spec::clssavthr;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_skill";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/SavingThrowTable";
  $self->{label} = "Level";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Level} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{FortSave} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{RefSave} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{WillSave} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clssavthr

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_savthr_fight.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_savthr_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_savthr_*.2da

=cut

1;
