package NWN::2da::spec::clsfeat;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_feat";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/FeatsTable";
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
  $self->{header}->{List} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 3],
  };
  $self->{header}->{GrantedOnLevel} = {
    "reference" => "",
    "format" => ["int"],
  };
  $self->{header}->{OnMenu} = {
    "reference" => "",
    "format" => ["int", "minmax", 0, 2],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clsfeat

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("CLS_FEAT_FIGHT.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_feat_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_feat_*.2da

=cut

1;
