package NWN::2da::spec::clspres;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_pres";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/PreReqTable";
  $self->{label} = "LABEL";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{LABEL} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ReqType} = {
    "reference" => "",
    "format" => ["string", "choose", "arcspell", "bab", "classor", "classnot", "feat", "feator", "race", "save", "skill", "spell", "var"],
  };
  $self->{header}->{ReqParam1} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{ReqParam2} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clspres

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("cls_pres_shadow.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_pres_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_savthr_*.2da

=cut

1;
