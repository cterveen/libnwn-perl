package NWN::2da::spec::masterfeats;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "masterfeats";
  $self->{maxrows} = 0;
  $self->{parent} = "feat.2da";
  $self->{label} = "FeatLabel";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{STRREF} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{DESCRIPTION} = {
    "reference" => "tlk",
    "format" => ["int"],
  };
  $self->{header}->{ICON} = {
    "reference" => "",
    "format" => ["string"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::masterfeats

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("masterfeats.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the masterfeats.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Race_feat_*.2da

=cut

1;
