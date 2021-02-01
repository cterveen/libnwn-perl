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
        while ($_ ne "") {
          if ($_ =~ m/^"([^"]+)"/) {
            # get the line until the next double quote
            push(@line, $1);

            $_ =~ s/^"([^"]+)"(\s*)//;
          }
          else {
            # get all non space characters
            $_ =~ m/^(\S+)/;
            push(@line, $1);
            $_ =~ s/^\S+(\s*)//;
          }
        }
        push(@{$self->{array}}, \@line);
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
  if (lc($filename) eq "appearancesndset.2da") {
    $self->{type} = "appearancesndset";

    use NWN::2da::spec::appearancesndset;
    $self->{spec} = NWN::2da::spec::appearancesndset->new();
  }
  if (lc($filename) eq "armor.2da") {
    $self->{type} = "armor";

    use NWN::2da::spec::armor;
    $self->{spec} = NWN::2da::spec::armor->new();
  }
  elsif (lc($filename) eq "baseitems.2da") {
    $self->{type} = "baseitems";

    use NWN::2da::spec::baseitems;
    $self->{spec} = NWN::2da::spec::baseitems->new();
  }
  if (lc($filename) eq "bodybag.2da") {
    $self->{type} = "bodybag";

    use NWN::2da::spec::bodybag;
    $self->{spec} = NWN::2da::spec::bodybag->new();
  }
  elsif (lc($filename) eq "categories.2da") {
    $self->{type} = "categories";

    use NWN::2da::spec::categories;
    $self->{spec} = NWN::2da::spec::categories->new();
  }
  elsif (lc($filename) eq "classes.2da") {
    $self->{type} = "classes";

    use NWN::2da::spec::classes;
    $self->{spec} = NWN::2da::spec::classes->new();
  }
  elsif (lc($filename) =~ m/^cls_atk_.+\.2da/) {
    $self->{type} = "cls_atk";

    use NWN::2da::spec::clsatk;
    $self->{spec} = NWN::2da::spec::clsatk->new();
  }
  elsif (lc($filename) =~ m/^cls_bfeat_.+\.2da/) {
    $self->{type} = "cls_bfeat";

    use NWN::2da::spec::clsbfeat;
    $self->{spec} = NWN::2da::spec::clsbfeat->new();
  }
  elsif (lc($filename) =~ m/^cls_feat_.+\.2da/) {
    $self->{type} = "cls_feat";

    use NWN::2da::spec::clsfeat;
    $self->{spec} = NWN::2da::spec::clsfeat->new();
  }
  elsif (lc($filename) =~ m/^cls_pres_.+\.2da/) {
    $self->{type} = "cls_pres";
  }
  elsif (lc($filename) =~ m/^cls_skill_.+\.2da/) {
    $self->{type} = "cls_skill";

    use NWN::2da::spec::clsskill;
    $self->{spec} = NWN::2da::spec::clsskill->new();
  }
  elsif (lc($filename) =~ m/^cls_spgn_.+\.2da/) {
    $self->{type} = "cls_spgn";

    use NWN::2da::spec::clsspgn;
    $self->{spec} = NWN::2da::spec::clsspgn->new();
  }
  elsif (lc($filename) =~ m/^cls_stat_.+\.2da/) {
    $self->{type} = "cls_stat";

    use NWN::2da::spec::clsstat;
    $self->{spec} = NWN::2da::spec::clsstat->new();
  }
  elsif (lc($filename) eq "creaturespeed.2da") {
    $self->{type} = "creaturespeed";

    use NWN::2da::spec::creaturespeed;
    $self->{spec} = NWN::2da::spec::creaturespeed->new();
  }
  elsif (lc($filename) eq "domains.2da") {
    $self->{type} = "domains";
  }
  elsif (lc($filename) eq "encumbrance.2da") {
    $self->{type} = "encumbrance";

    use NWN::2da::spec::encumbrance;
    $self->{spec} = NWN::2da::spec::encumbrance->new();
  }
  elsif (lc($filename) eq "exptable.2da") {
    $self->{type} = "exptable";

    use NWN::2da::spec::exptable;
    $self->{spec} = NWN::2da::spec::exptable->new();
  }
  elsif (lc($filename) eq "feat.2da") {
    $self->{type} = "feat";

    use NWN::2da::spec::feat;
    $self->{spec} = NWN::2da::spec::feat->new();
  }
  elsif (lc($filename) eq "footstepsounds.2da") {
    $self->{type} = "footstepsounds";

    use NWN::2da::spec::footstepsounds;
    $self->{spec} = NWN::2da::spec::footstepsounds->new();
  }
  elsif (lc($filename) eq "lightcolor.2da") {
    $self->{type} = "lightcolor";

    use NWN::2da::spec::lightcolor;
    $self->{spec} = NWN::2da::spec::lightcolor->new();
  }
  elsif (lc($filename) eq "masterfeats.2da") {
    $self->{type} = "masterfeats";

    use NWN::2da::spec::masterfeats;
    $self->{spec} = NWN::2da::spec::masterfeats->new();
  }
  elsif (lc($filename) eq "packages.2da") {
    $self->{type} = "packages";

    use NWN::2da::spec::packages;
    $self->{spec} = NWN::2da::spec::packages->new();
  }
  elsif (lc($filename) =~ m/^packeq/) {
    $self->{type} = "packeq";
  }
  elsif (lc($filename) =~ m/^packft/) {
    $self->{type} = "packft";
  }
  elsif (lc($filename) =~ m/^packsk/) {
    $self->{type} = "packsk";
  }
  elsif (lc($filename) =~ m/^packsp/) {
    $self->{type} = "packsp";
  }
  elsif (lc($filename) eq "placeableobjsnds.2da") {
    $self->{type} = "placeableobjsnds";

    use NWN::2da::spec::placeableobjsnds;
    $self->{spec} = NWN::2da::spec::placeableobjsnds->new();
  }
  elsif (lc($filename) eq "placeables.2da") {
    $self->{type} = "placeables";

    use NWN::2da::spec::placeables;
    $self->{spec} = NWN::2da::spec::placeables->new();
  }
  elsif (lc($filename) =~ m/^race_feat_/) {
    $self->{type} = "race_feat_";

    use NWN::2da::spec::racefeat;
    $self->{spec} = NWN::2da::spec::racefeat->new();
  }
  elsif (lc($filename) eq "racialtypes.2da") {
    $self->{type} = "racialtypes";

    use NWN::2da::spec::racialtypes;
    $self->{spec} = NWN::2da::spec::racialtypes->new();
  }
  elsif (lc($filename) eq "ranges.2da") {
    $self->{type} = "ranges";

    use NWN::2da::spec::ranges;
    $self->{spec} = NWN::2da::spec::ranges->new();
  }
  elsif (lc($filename) eq "skills.2da") {
    $self->{type} = "skills";

    use NWN::2da::spec::skills;
    $self->{spec} = NWN::2da::spec::skills->new();
  }
  elsif (lc($filename) eq "spells.2da") {
    $self->{type} = "spells";

    use NWN::2da::spec::spells;
    $self->{spec} = NWN::2da::spec::spells->new();
  }
  elsif (lc($filename) eq "spellschools.2da") {
    $self->{type} = "spellschools";

    use NWN::2da::spec::spellschools;
    $self->{spec} = NWN::2da::spec::spellschools->new();
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

  if(!exists($self->{spec}->{maxrows})) {
    return -1;
  }

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
    reference to a 2da file, 'header/{file}.2da' or 'row/{file}.2da' as a
    reference to a header or row in the given 2da file,
    'hex/{0x1 value}/{0x2 value}/{...} for hexadecimals.

=back

=cut

1;
