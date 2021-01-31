package NWN::2da::spec::encumbrance;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "encumbrance";
  $self->{maxrows} = 0;
  $self->{parent} = "";
  $self->{label} = "Normal";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Normal} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Heavy} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::encumbrance

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("encumbrance.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the encumbrance.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
