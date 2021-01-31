package NWN::2da::spec::spellschools;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "spellschools";
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
  $self->{header}->{Letter} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{StringRef} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{Opposition} = {
    "reference" => "row/spellschools.2da",
    "format" => ["int"],
  };
  $self->{header}->{Description} = {
    "reference" => "tlk",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::spellschools

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("spellschools.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the spellschools.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Spellschools.2da

=cut

1;
