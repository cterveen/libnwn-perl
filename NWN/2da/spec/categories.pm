package NWN::2da::spec::categories;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "categories";
  $self->{maxrows} = 0;
  $self->{parent} = "feat.2da";
  $self->{label} = "Category";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{Category} = {
    "reference" => "",
    "format" => ["string"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::categories

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("categories.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the categories.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Categories.2da

=cut

1;
