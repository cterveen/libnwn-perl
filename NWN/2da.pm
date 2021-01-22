package NWN::2da;

use File::Basename;
use NWN::tlk;

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
      elsif ($_ =~ m/"/) {
        # items may contain spaces.
        my @line;
        while ($line) {
          if ($_ =~ m/^"([^"]+)"/) {
            # get the line until the next double quote
            push(@line, $1);

            $_ =~ s/^"([^"])"\s+//;
          }
          else {
            # get all non space characters
            $_ =~ m/^"(\S+)/;
            push(@line, $1);
            $_ =~ s/^\S+\s+//;
          }
        }
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
  
  # set the type and load specifications
  my ($filename, $path, $suffix) = fileparse($file);
  if (lc($filename) eq "appearance.2da") {
    $self->{type} = "appearance";

    use NWN::2da::spec::appearance;
    $self->{spec} = NWN::2da::spec::appearance->new();
  }
  if (lc($filename) eq "armor.2da") {
    $self->{type} = "armor";
  }
  elsif (lc($filename) eq "baseitems.2da") {
    $self->{type} = "baseitems";
  }
  elsif (lc($filename) eq "classes.2da") {
    $self->{type} = "classes";

    use NWN::2da::spec::classes;
    $self->{spec} = NWN::2da::spec::classes->new();
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

    use NWN::2da::spec::racialtypes;
    $self->{spec} = NWN::2da::spec::racialtypes->new();
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

  $self->{path} = $path;

  # make an index of the headers
  my $i = 0;
  foreach my $header ($self->headers()) {
    $self->{index}->{$header} = $i;
    $i++;
  }
}

sub format {
  my $self = shift;
  my $header = shift;
  
  if (!exists($self->{spec}->{header}->{$header}->{format})) {
    return ["unknown header"];
  }
  return $self->{spec}->{header}->{$header}->{format}; 
}

sub label {
  my $self = shift;

  if (!exists($self->{spec}->{label})) {
    return "unknown label";
  }
  return $self->{spec}->{label};
}

sub maxrows {
  my $self = shift;

  return $self->{spec}->{maxrows};
}

sub parent {
  my $self = shift;

  return $self->{spec}->{parent};
}

sub reference {
  my $self = shift;
  my $header = shift;

  if (!exists($self->{spec}->{header}->{$header}->{reference})) {
    return "";
  }
  return $self->{spec}->{header}->{$header}->{reference};
}

sub load_tlk {
  my $self = shift;
  my $file = shift;

  my $tlk = NWN::tlk->new();
     $tlk->load($file);

  $self->{tlk} = $tlk;
}

sub cell {
  my $self = shift;
  my $header = shift;
  my $row = shift;
     $row++;
  my $col = $self->{index}->{$header};

  return $self->{array}[$row][$col];  
}

sub row {
  my $self = shift;
  my $row = shift;

  if ($row < -1) {
    return ();
  }
  if ($row > $self->rows()-1) {
    return ();
  }
  return @{$self->{array}[$row+1]};
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

    NWN:2da - Neverwinter Nights 2da file parser

=head1 SYNOPSYS

    use NWN::2da;

    my $tda = NWN::2da->new();
       $tda->load("./classes.2da");

    print $tda->version();

=head1 DESCRIPTION

    This module will load a NWN 2da file and extract information from it.

=head1 METHODS

=head2 Load a .2da file and supportive files

=over

=item load($file)

    Load a .2da file

=item load_tlk($file)

    Load a tlk file.

=back

=head2 Get info of the .2da file.

=over

=item type()

    Returns a string with the type of file. This is the filename or the prefix
    in the filename.

=item version()

    Return a string with the version of the 2da file.

=back

=head2 Get items from the .2da file.

=over

=item headers()

    Returns an array with the headers

=item rows()

    Returns a string with the number of rows in the list.

=item cell($header, $row)

    Returns the value of a cell identified by its header and row.

=item col($header)

    Returns an array with the contents of a column identified by its header.

=item row($n)

    Returns an array with the contents of row $n. Where $n = -1 is the header,
    $n = 0 is the first row, $n = 1 is the second item of the list and $n =
    $tda->rows()-1 the last item of the list.

=back

=head2 Get file specifications

=over

=item format($header)

    Returns an array reference consisting of the following items: [0] datatype
    [1] test [2]... values for the test.

    Datatype is one of string, int or bool. Test is either min, minmax, prefix
    or choose. 

    When test is min the next item in the list is the minimum value. For minmax
    the next two values are the minumum and maximum respecively. When test is
    prefix the next item is the prefix in lower case. On choose the next items
    are the valid options in lower case.

=item label()

    Retuns a string with the header that is used as a label.

=item maxrows()

    Return a string with the maximum number of rows or 0 when there in no maximum.

=item parent()

    Return a string with a reference to a parent file and a header:
    {file}/{header}. If the file is a base file the string will be empty.

=item reference($header)

    Returns a string with a reference for the header. The reference can be one
    of the following forms: 'tlk' as reference to the TLK table, '2da' as
    reference to a 2da file, 'header/{file}.2da', 'row/{file}.2da' as a
    reference to a header or row in the given 2da file.

=back

=cut

1;
