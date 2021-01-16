package NWN::2da::test;

use NWN::2da;
use strict;
use warnings;

our(@ISA);
@ISA = qw(NWN::2da);

sub new {
  my $class = shift;
  my $file = shift;

  my $self = {};
     $self->{errors} = ();
     $self->{tests} = 0;
     $self->{fails} = 0;

  bless($self, $class);
}

sub set_error {
  my $self = shift;
  my $error = shift;
  
  push(@{$self->{errors}}, $error);
  $self->{fails}++;
}


sub errors {
  my $self = shift;
  
  return @{$self->{errors}};
}

sub tests {
  my $self = shift;
  
  return $self->{tests};
}

sub fails {
  my $self = shift;
  
  return $self->{fails};
}

sub test_file {
  my $self = shift;

  $self->assert_maxrows($self->rows, $self->{spec}->maxrows());
}

sub test_values {
  my $self = shift;
  my @headers = $self->headers();

  if (!exists($self->{siblings})) {
    $self->siblings();
  }

  foreach my $header(@headers) {
    my @col = $self->col($header);

    my $row = 1;
    foreach my $value(@col) {
      $self->assert_format($value, $self->{spec}->format($header), "Error on format for " . $header . "(" . $row . "):");
      $self->assert_reference($self->{spec}->reference($header), $value, "Error on reference for " . $header . "(" . $row . "):");
      $row++;
    }
  }
}

sub assert_maxrows {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  $self->{tests}++;

  if (!defined($message)) {
    $message = "Error on the maximum number of rows:";
  }
  if ($expected == 0) {
    return 1;
  }
  elsif ($value <= $expected) {
    return 1;
  }

  $self->set_error($message . "\n  Expected:"  . $expected . "\n  Found:" . $value . "\n");
  return 0;
}

sub assert_reference {
  my $self = shift;
  my $reference = shift;
  my $value = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Reference not found:"
  }

  # ignore none references or empty values
  if ($reference eq "" || $value eq "****") {
    return 1;
  }

  $self->{tests}++;

  my @reference = split("/", $reference);

  if ($reference[0] eq "2da") {
    if (!exists($self->{siblings}->{lc($value) . ".2da"})) {
      my $expected = join("|", sort(keys(%{$self->{siblings}})));
      if (length($expected) > 69) {
        $expected = substr($expected, 0, 66) . "...";
      }
      $self->set_error($message . "\n  Expected: " . $expected . "\n  Found: " . lc($value) . ".2da\n");
      return 0;
    }
  }
  elsif ($reference[0] eq "row") {
    my $tda = $self->load_2da($reference[1]);
    if (defined($tda)) {
      if ($value > $tda->rows()) {
        $self->set_error($message . "\n  Expected: <" . $tda->rows() . "\n  Found: " . lc($value) . ".2da\n");
        return 0;
      }
    }
    return 1;
  }
  elsif ($reference[0] eq "header") {
    my $tda = $self->load_2da($reference[1]);
    if (defined($tda)) {
      my @headers = $tda->headers();
      foreach my $header(@headers) {
        if ($value eq $header) {
          return 1;
        }
      }
      my $expected = join("|", @headers);
      if (length($expected) > 69) {
        $expected = substr($expected, 0, 66) . "...";
      }
      $self->set_error($message . "\n  Expected: " . $expected . "\n  Found: " . $value . "\n");
      return 0;
    }
  }
  elsif ($reference[0] eq "texture") {
    # to be implemented
  }
  else {
    $self->set_error("Unknown reference:\n  Expected: 2da|row\n  Found: " . $reference[0] . "\n");
  }
}

sub assert_format {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on value:"
  }
  
  $self->{tests}++;

  if ($value eq "****") {
    return 1;
  }

  # check the datatypes
  if ($expected->[0] eq "int") {
    if ($value !~ m/^\-?\d+$/) {
       $self->set_error($message . "\n  Expected:"  . $expected->[0] . "\n  Found: " . $value . "\n");
      return 0;
    }
  }
  elsif ($expected->[0] eq "float") {
    if ($value !~ m/^\-?\d+(\.\d+)?$/) {
      $self->set_error($message . "\n  Expected:"  . $expected->[0] . "\n  Found: " . $value . "\n");
      return 0;
    }
  }
  elsif ($expected->[0] eq "bool") {
    if ($value != 0 && $value != 1) {
      $self->set_error($message . "\n  Expected:"  . $expected->[0] . "\n  Found: " . $value . "\n");
      return 0;
    }
  }
  elsif ($expected->[0] eq "string") {
    if ($value !~ m/^[\w*]+$/) {
      $self->set_error($message . "\n  Expected:"  . $expected->[0] . "\n  Found: " . $value . "\n");
      return 0;
    }
  }
  elsif ($expected->[0] eq "hex") {
    if ($value !~ m/^0x\d+$/) {
      $self->set_error($message . "\n  Expected:"  . $expected->[0] . "\n  Found: " . $value . "\n");
      return 0;
    }
  }
  
  # check the values
  if (defined($expected->[1])) {
    if ($expected->[1] eq "min" && $value < $expected->[2]) {
      $self->set_error($message . "\n  Expected minumum of:"  . $expected->[2] . "\n  Found: " . $value . "\n");
      return 0;
    }
    elsif ($expected->[1] eq "minmax" && ($value < $expected->[2] || $value > $expected->[3])) {
      $self->set_error($message . "\n  Expected value between:"  . $expected->[2] . " and " . $expected->[3] . "\n  Found: " . $value . "\n");
      return 0;
    }
    elsif ($expected->[1] eq "prefix" && lc(substr($value, 0, length($expected->[2]))) ne $expected->[2]) {
      $self->set_error($message . "\n  Expected prefix:"  . $expected->[2] . " and " . $expected->[3] . "\n  Found: " . lc(substr($value, 0, length($expected->[2]))) . "\n");
      return 0;
    }
    elsif ($expected->[1] eq "choose") {
      my @options;
      foreach (2 .. scalar(@{$expected})-1) {
        push(@options, $expected->[$_]);
      }
      foreach my $option(@options) {
        if (lc($value) eq $option) {
          return 1;
        }
      }
      $self->set_error($message . "\n  Expected one of: "  . join("|", @options) . "\n  Found: " . lc($value) . "\n");
      return 0;
    }
  }
  return 1;
}

sub load_2da {
  my $self = shift;
  my $file = shift;

  if (!exists($self->{'2da_objects'}->{$file})) {
    $self->siblings();
    if (!exists($self->{siblings}->{$file})) {
      $self->{'2da_objects'}->{$file} = undef;
      $self->set_error("Required file " . $file . " not found!");
      return;
    }
    my $tda = NWN::2da->new();
       $tda->load($self->{siblings}->{$file});

       $self->{'2da_objects'}->{$file} = $tda;
  }
  return $self->{'2da_objects'}->{$file};
}

sub siblings {
  my $self = shift;

  if (!exists($self->{siblings})) {
    opendir(DIR, $self->{path}) or die "Can't open path " . $self->{path} . ": " . $!;
    my @files = readdir(DIR);
    closedir(DIR);

    foreach my $file (@files) {
      if (lc(substr($file, -4)) eq ".2da") {
        $self->{siblings}->{lc($file)} = $self->{path} . $file;
      }
    }
  }
}

=head1 NAME

    NWN::2da::test

=head1 SYNOPSIS

    use NWN::2da::test;
    my $test = NWN::2da::test->new();
       $test->load($file);
       $test->load_spec();
       $test->test_datatypes();

    print "Performed " . $test->tests() . " tests\n";
    print "Found " . $test->fails() . " errors\n";

=head1 DESCIPTION

    This module tests NWN 2da files on correct formats.

=head1 METHODS

=over

=item load($file)

    Load a 2da file.

=item load_spec()

    Load the specifications of a 2da file. If the file type is unknown raises
    an error.

=item test_files()

     Tests the maximum number of rows.

=item test_values()

    Test whether the value of each item in a column is correct.

    The format of the value is checked. This includes checks for minimum and/or
    maximum values, file prefixes and preset options.

    If a value is a reference to another file there is a check that the file
    and the reference exists.

=item tests()

    Returns a string with the number of performed tests.

=item fails()

    Returns a string with the number of failed tests.

=item errors()

    Returns an array with raised errors.

=back

=head1 PRIVATE METHODS

    These methods have been implemented but are used primarily within the
    module.

=over

=item assert_maxrow($value, $expected, [$message])

    Assert the number of rows against the maximum number of rows.

=item assert_value($value, $expected, [$message])

    Assert the value of a certain cell.
 
=item siblings()

    Get a list of other 2da files in the same directory.

=back

=head1 MORE INFO

    See NWN::2da::spec::{class} for more information on the specifications.

=cut
1;
