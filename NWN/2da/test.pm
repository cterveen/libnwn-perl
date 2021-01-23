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

  # test the maximum number of rows
  if ($self->maxrows() > 0) {
    $self->assert_lesser_or_equal($self->rows, $self->maxrows(), "Error on the maximum number of rows:");
  }

  # test whether all headers are defined
  my @headers = $self->headers();
  my @defined_headers = keys(%{$self->{spec}->{header}});
  foreach my $header(@headers) {
    $self->assert_in_list($header, \@defined_headers, "Error undefined header in " . $self->{file} . ":");
  }
  
  # test whether there are missing headers
  foreach my $header(@defined_headers) {
    $self->assert_in_list($header, \@headers, "Error missing header in " . $self->{file} . ":");
  }
}

sub test_values {
  my $self = shift;
  my @headers = $self->headers();

  if (!exists($self->{siblings})) {
    $self->siblings();
  }

  foreach my $header(@headers) {
    my @col = $self->col($header);
    my $row = 0;

    foreach my $value(@col) {

      # ignore if empty (****)
      if ($value eq "****") {
        $row++;
        next;
      }

      # test the format
      my $message = "Error on format for " . $header . "(" . $row . "):";
      my $format = $self->format($header);
      my @format = ("foo");

      if ($format->[0] eq "int") {
        $self->assert_is_int($value, $message);
      }
      elsif ($format->[0] eq "float") {
        $self->assert_is_float($value, $message);
      }
      elsif ($format->[0] eq "bool") {
        $self->assert_is_bool($value, $message);
      }
      elsif ($format->[0] eq "string") {
        $self->assert_is_string($value, $message);
      }
      elsif ($format->[0] eq "hex") {
        $self->assert_is_hex($value, $message);
      }

      # test the value
      $message = "Error in value for " . $header . "(" . $row . "):";
      if (defined($format[1])) {
        if ($format->[1] eq "min") {
          $self->assert_more_or_equal($value, $format[2], $message);
        }
        if ($format->[1] eq "minmax") {
          $self->assert_between_or_equal($value, $format[2], $message);
        }
        if ($format->[1] eq "prefix") {
          $self->assert_prefix($value, $format[2], $message);
        }
        if ($format->[1] eq "choose") {
          my @options;
          foreach (2 .. scalar(@format)-1) {
            push(@options, $format[$_]);
          }
          $self->assert_in_list($value, \@options, $message);
        }
      }

      # test the reference
      $message = "Error on reference for " . $header . "(" . $row . "):";
      if ($self->reference($header) ne "") {
        my @reference = split("/", $self->reference($header));

        if ($reference[0] eq "2da") {
          my @expected = sort(keys(%{$self->{siblings}}));
          $self->assert_in_list(lc($value . ".2da"), \@expected, $message);
        }
        elsif ($reference[0] eq "row") {
          my $tda = $self->load_2da($reference[1]);
          if (defined($tda)) {
            $self->assert_between_or_equal($value, 0, $tda->rows(-1), $message);
          }
        }
        elsif ($reference[0] eq "header") {
          my $tda = $self->load_2da($reference[1]);
          if (defined($tda)) {
            my @headers = $tda->headers();
            $self->assert_in_list($value, \@headers, $message);
          }
        }
        elsif ($reference[0] eq "col") {
          my $tda = $self->load_2da($reference[1]);
          if (defined($tda)) {
            my @expected = $tda->col($reference[2]);
            $self->assert_in_list($value, \@expected, $message);
          }
        }
        # should add references for tlk, ltr and texture
      }

      $row++;
    }
  }
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

sub assert_is_int {
  my $self = shift;
  my $value = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check for integer:";
  }

  $self->{tests}++;

  if ($value =~ m/^\-?\d+$/) {
    return 1;
  }
  $self->set_error($message . "\nExpected: an integer\nFound: " . $value . "\n");
}

sub assert_is_float {
  my $self = shift;
  my $value = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check for float:";
  }

  $self->{tests}++;

  if ($value =~ m/^\-?\d+(\.\d+)?$/) {
    return 1;
  }
  $self->set_error($message . "\nExpected: a float\nFound: " . $value . "\n");
}

sub assert_is_bool {
  my $self = shift;
  my $value = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check for bool:";
  }

  $self->{tests}++;

  if ($value =~ m/^[01]$/) {
    return 1;
  }
  $self->set_error($message . "\nExpected: a bool\nFound: " . $value . "\n");
}

sub assert_is_string {
  my $self = shift;
  my $value = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check for string:";
  }

  $self->{tests}++;

  if ($value =~ m/^[\w_\(\)\-]+$/) {
    return 1;
  }
  $self->set_error($message . "\nExpected: a string\nFound: " . $value . "\n");
}

sub assert_is_hex {
  my $self = shift;
  my $value = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check for hex:";
  }

  $self->{tests}++;

  if ($value =~ m/^0x[0-9a-f]+$/i) {
    return 1;
  }
  $self->set_error($message . "\nExpected: a hex\nFound: " . $value . "\n");
}

sub assert_between_or_equal {
  my $self = shift;
  my $value = shift;
  my $min = shift;
  my $max = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check whether value is between or equal:";
  }

  $self->{tests}++;

  if ($value >= $min && $value <= $max) {
    return 1;
  }
  $self->set_error($message . "\nExpected: ["  . $min . "-" . $max . "]\nFound: " . $value . "\n");
  return 0;
}

sub assert_lesser_or_equal {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check whether value is lower or equal than expected:";
  }

  $self->{tests}++;

  if ($value <= $expected) {
    return 1;
  }
  $self->set_error($message . "\nExpected <=: "  . $expected . "\nFound: " . $value . "\n");
  return 0;
}

sub assert_more_or_equal {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check whether value is more or equal than expected:";
  }

  $self->{tests}++;

  if ($value >= $expected) {
    return 1;
  }
  $self->set_error($message . "\nExpected >=: "  . $expected . "\nFound: " . $value . "\n");
  return 0;
}

sub assert_in_list {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error finding item in list:";
  }

  $self->{tests}++;

   foreach my $expect (@{$expected}) {
     if (lc($value) eq lc($expect)) {
       return 1;
     }
   }

   # trim expected list to 80 characters
   my $expect = join("|", @{$expected});
      $expect = substr($expect, 0, 67);
   $self->set_error($message . "\nExpected one of: "  . $expect . "\nFound: " . lc($value) . "\n");
   return 0;
}

sub assert_prefix {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on check for prefix:";
  }

  $self->{tests}++;

  if (lc(substr($value, 0, length($expected))) eq lc($expected)) {
    return 1;
  }
  $self->set_error($message . "\nExpected: "  . $expected . "*\nFound: " . $value . "\n");
  return 0;
}

=head1 NAME

    NWN::2da::test

=head1 SYNOPSIS

    use NWN::2da::test;
    my $test = NWN::2da::test->new();
       $test->load($file);
       $test->test_file();
       $test->test_values();

    print "Performed " . $test->tests() . " tests\n";
    print "Found " . $test->fails() . " errors\n";

=head1 DESCIPTION

    This module tests NWN 2da files on correct formats.

=head1 METHODS

=head2 Main methods

=over

=item load($file)

    Load a 2da file.

=item test_file()

     Tests the file specifications. There are tests for the maxium number of
     rows, missing headers and unknown headers.

=item test_values()

    Test whether the value of each item in a column is correct. Empty (****)
    values are ignored.

    This checks the format which should be one of int, bool, string or hex.

    The value itself can be checked for minimum and/or maximum values, prefixes
    or preset options.

    If a value is a reference to another file there is a check that the file
    and the reference exists. This currently supports references to other .2da
    files only.


=item tests()

    Returns a string with the number of performed tests.

=item fails()

    Returns a string with the number of failed tests.

=item errors()

    Returns an array with raised errors.

=back

=head2 ASSERTS

    These methods do small checks of retrieved values against expected values.
    A custom error message can be set, e.g. to refer to the origin of the value.

    The assert function return 1 if the check is passed or set an error message
    and return 0 if the check has failed.

=over

=item assert_between_or_equal($value, $min, $max, $message)

    Asserts wheter a value is between or equal to the set minimum and maxiumum.

=item assert_in_list($value, $list, $message)

    Checks whether a value is in the list which is given as an array reference.

=item assert_is_bool($value, $message)

    Checks whether a value is a boolean (0 or 1)

=item assert_is_float($value, $message)

    Checks whether a value is a float number.
    
=item assert_is_hex($value, $message)

    Checks whether a value has a hexadecimal format.

=item assert_is_int($value, $message)

    Checks whether a value is an integer

=item assert_is_string($value, $message)

    Checks whether a value is a string

=item assert_lesser_or_equal($value, $max, $message)

    Checks whether a value is lesser or equal to the given maximum.

=item assert_more_or_equal($value, $min, $message)

    Checks whether a value is more or equal to a given minimum.

=item assert_prefix($value, $prefix, $message)

    Checks whether a value starts with a given prefix.

=back

=head2 Internal methods

    These methods are primarily used to load files, set errors etc.

=over

=item load_2da($filename)

    Returns an object of another 2da file in the same base directory of the
    tested file.

=item set_error($message)

    Adds the message to the list of errors and raises the number of fails with
    one.

=item siblings()

    Get a list of other 2da files in the same directory.

=back

=head2 Inherited methods

    NWN::2da::test inherits all methods of NWN::2da.

=head1 MORE INFO

    NWN::2da 
    NWN::2da::spec::{class}

=cut
1;
