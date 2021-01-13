package NWN::2da;
use File::Basename;

sub new {
  my $class = shift;
  my $self = {};
     $self->{array} = [];
  bless($self, $class);
}

sub load {
  my $self = shift;
  my $file = shift;

  $self->{file} = $file;

  if (!-f $file) {
    return FALSE;
  }
  else {
    open(FILE, "<", $file) or die "Can't open $file for reading: $!";
    while(<FILE>) {
      s/^\s+|[\s\r\n]+$//;
      if ($_ eq "") {
        next;
      }
      if ($_ =~ m/^2DA/i) {
        $self->{version} = substr($_, 4);
      }
      else {
        my @line = split(/\s+/, $_);
        push(@{$self->{array}}, \@line);
      }
    }
    close(FILE);
  }
  # set header id at the first column
  unshift(@{$self->{array}[0]}, "[id]");
  
  # set the type
  my ($filename, $path, $suffix) = fileparse($file);
  if (lc($filename) eq "armor.2da") {
    $self->{type} = "armor";
  }
  elsif (lc($filename) eq "baseitems.2da") {
    $self->{type} = "baseitems";
  }
  elsif (lc($filename) eq "classes.2da") {
    $self->{type} = "classes";
  }
  elsif (lc($filename) =~ m/^cls_atk_*+.2da/) {
    $self->{type} = "cls_atk";
  }
  elsif (lc($filename) =~ m/^cls_bfeat_*+.2da/) {
    $self->{type} = "cls_bfeat";
  }
  elsif (lc($filename) =~ m/^cls_feat_*+.2da/) {
    $self->{type} = "cls_feat";
  }
  elsif (lc($filename) =~ m/^cls_pres_*+.2da/) {
    $self->{type} = "cls_pres";
  }
  elsif (lc($filename) =~ m/^cls_skill_*+.2da/) {
    $self->{type} = "cls_skill";
  }
  elsif (lc($filename) =~ m/^cls_spgn_*+.2da/) {
    $self->{type} = "cls_spgn";
  }
  elsif (lc($filename) =~ m/^cls_stat_*+.2da/) {
    $self->{type} = "cls_stat";
  }
  elsif (lc($filename) eq "encumbrance.2da") {
    $self->{type} = "encumbrance";
  }
  elsif (lc($filename) eq "exptable.2da") {
    $self->{type} = "exptable";
  }
  elsif (lc($filename) eq "feat.2da") {
    $self->{type} = "feat";
  }
  elsif (lc($filename) =~ m/^race_feat_/) {
    $self->{type} = "race_feat_";
  }
  elsif (lc($filename) eq "racialtypes.2da") {
    $self->{type} = "racialtypes";
  }
  elsif (lc($filename) eq "skills.2da") {
    $self->{type} = "skills";
  }
  elsif (lc($filename) eq "spells.2da") {
    $self->{type} = "spells";
  }
  elsif (lc($filename) eq "spellschools.2da") {
    $self->{type} = "spellschools";
  }
  else {
    $self->{type} = "Unknown (" . lc($filename) . ")";
  }

  # make an index
  my $i = 0;
  foreach my $header ($self->headers()) {
    $self->{index}->{$header} = $i;
    $i++;
  }
}

sub row {
  my $self = shift;
  my $row = shift;

  if ($row < 0) {
    return ();
  }
  if ($row > $self->rows()) {
    return ();
  }
  return @{$self->{array}[$row]};
}

sub col {
  my $self = shift;
  my $header = shift;
  if (exists($self->{index}->{$header})) {
    my $col = $self->{index}->{$header};
    my @data;
    foreach my $row (1 .. $self->rows()) {
      push(@data, $self->{array}[$row][$col]);
    }
    return @data;
  }
  else {
    return ();
  }
}

sub rows {
  my $self = shift;
  return scalar(@{$self->{array}})-1;
}

sub headers {
  my $self = shift;
  return @{$self->{array}[0]};
}

sub type {
  my $self = shift;

  return $self->{type};
}

sub version {
  my $self = shift;
  return $self->{version};
}

=head1 NAME

    NWN:2da - 2da file parser

=head1 SYNOPSYS

    use NWN::2da;

    my $tda = NWN::2da->new();
       $tda->load("./classes.2da");

    print $tda->version();

=head1 DESCRIPTION

    This module will load a NWN 2da file and extract information from it.

=head1 METHODS

=over

=item load($file)

    Load a .2da file

=item col($header)

    Returns an array with the contents of a column identified by its header.

=item headers()

    Returns an array with the headers

=item row($n)

    Returns an array with the contents of row $n. Where $n = 0 is the headers,
    $n = 1 is the first item of the list and $n = $tda->rows() the last item of
    the list.

=item rows()

    Returns a string with the number of rows in the list.

=item type()

    Returns a string with the type of file. This is the filename or the prefix
    in the filename.

=item version()

    Return a string with the version of the 2da file.

=back

=cut

1;
