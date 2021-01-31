package NWN::2da::spec::ranges;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "ranges";
  $self->{maxrows} = 0;
  $self->{parent} = "";
  $self->{label} = "Label";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Label} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{PrimaryRange} = {
    "reference" => "",
    "format" => ["float"],
  };
  $self->{header}->{SecondaryRange} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{Name} = {
    "reference" => "tlk",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::ranges

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("ranges.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the ranges.2da file. Do not call
    this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da

=cut

1;
