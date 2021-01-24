package NWN::2da::spec::racefeat;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "race_feat_";
  $self->{maxrows} = 0;
  $self->{parent} = "racialtype.2da/FeatsTable";
  $self->{label} = "FeatLabel";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{FeatLabel} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{FeatIndex} = {
    "reference" => "row/feat.2da",
    "format" => ["int"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::racefeat

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("race_feat_dwarf.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the race_feat_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Race_feat_*.2da

=cut

1;
