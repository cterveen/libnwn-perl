package NWN::2da::spec::clsbfeat;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_bfeat";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/BonusFeatsTable";
  $self->{label} = "[id]";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Bonus} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clsbfeat

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_bfeat_fight.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_bfeat_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_bfeat_*.2da

=cut

1;
