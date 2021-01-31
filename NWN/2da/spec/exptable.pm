package NWN::2da::spec::exptable;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "exptable";
  $self->{maxrows} = 0;
  $self->{parent} = "";
  $self->{label} = "Level";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Level} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{XP} = {
    "reference" => "",
    "format" => ["string"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::exptable

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("exptable.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the exptable.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
