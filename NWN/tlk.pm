package NWN::tlk;

sub new {
  my $class = shift;
  my $self = {};

  bless($self, $class);
}

sub load {
  my $self = shift;
  my $file = shift;
  
  $self->{'debuglog'} .= "Open $file\n";
  open($self->{'fh'}, "<", $file) or die "Can't open $file: $!";
  $self->get_headers();
  $self->get_stringtable();
}

sub get_headers {
  my $self = shift;
  # this shouldn't be an issue, paranoia.
  $self->{headers}->{FileType} = $self->read_string(4);
  $self->{headers}->{FileVersion} = $self->read_string(4);
  $self->{headers}->{LanguageID} = $self->read_dword();
  $self->{headers}->{StringCount} = $self->read_dword();
  $self->{headers}->{StringEntriesOffset} = $self->read_dword();
}

sub get_stringtable {
  my $self = shift;

  foreach (0 .. ($self->{headers}->{StringCount}-1)) {
    $self->{strings}->[$_]->{flags} = $self->read_dword();
    $self->{strings}->[$_]->{SoundResRef} = $self->read_string(16);
    $self->{strings}->[$_]->{VolumeVariance} = $self->read_dword();
    $self->{strings}->[$_]->{PitchVariance} = $self->read_dword();
    $self->{strings}->[$_]->{OffsetToString} = $self->read_dword();
    $self->{strings}->[$_]->{StringSize} = $self->read_dword();
    $self->{strings}->[$_]->{SoundLength} = $self->read_dword();
  }
}

sub get_string {
  my $self = shift;
  my $id = shift;

  my $offset = $self->{headers}->{StringEntriesOffset} + $self->{strings}->[$id]->{OffsetToString};
  seek($self->{'fh'}, $offset, 0);

  return $self->read_string($self->{strings}->[$id]->{StringSize});
}

sub read_dword {
  my $self = shift;
  my $string;
  my $char = read($self->{'fh'}, $string, 4);
  my $long = unpack("l", $string);
  
  $self->{'debuglog'} .= "<- Read dword at " . (tell($self->{'fh'})-4) . ": " . $long . "\n";
  
  return $long;
}

sub read_word {
  my $self = shift;
  my $string;
  read($self->{'fh'}, $string, 2);
  my $short = unpack("S", $string);
  
  $self->{'debuglog'} .= "<- Read word at " . (tell($self->{'fh'})-2) . ": " . $short . "\n";
  
  return $short;
}

sub read_float {
  my $self = shift;
  
  my $string;
  read($self->{'fh'}, $string, 4);
  my $float = sprintf("%.2f", unpack("f", $string));
  
  $self->{'debuglog'} .= "<- Read float at " . (tell($self->{'fh'})-4) . ": " . $float . "\n";
  
  return $float;
}

sub read_string {
  my $self = shift;
  my $length = shift;

  read($self->{'fh'}, $string, $length);

  return $string;
}

=head1 NAME

    NWN:tlk - Neverwinter Nights tlk file parser

=head1 SYNOPSYS

    use NWN::tlk

    my $tlk = NWN::tlk->new();
       $tlk->load("./dialog.tlk");

    print $tlk->item(4);

=head1 DESCRIPTION

    This module will load a NWN 2da file and extract information from it.

=head1 METHODS

=over

=item load($file)

    Load a .2da file

=item get_string($id)

    Returns the string from the TLK table.

=back

=head1 MORE INFO

    https://nwn.wiki/pages/viewpage.action?pageId=327727&preview=%2F327727%2F327747%2FBioware_Aurora_TalkTable_Format.pdf

=cut

1;
