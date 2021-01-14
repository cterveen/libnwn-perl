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

sub load_spec {
  my $self = shift;

  if ($self->{type} eq "classes") {
    use NWN::2da::spec::classes;
    $self->{spec} = NWN::2da::spec::classes->new();
  }
  else {
    $self->set_error("Unknown class");
  }  
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

sub test_datatypes {
  my $self = shift;
  my @headers = $self->headers();


  foreach my $header(@headers) {
    my @col = $self->col($header);

    my $row = 1;
    foreach my $value(@col) {
      $self->assert_datatype($value, $self->{spec}->datatype($header), "Error on datatype for " . $header . "(" . $row . "):");
      $row++;
    }
  }
}

sub assert_datatype {
  my $self = shift;
  my $value = shift;
  my $expected = shift;
  my $message = shift;

  if (!defined($message)) {
    $message = "Error on datatype:"
  }

  $self->{tests}++;

  if ($expected eq "int") {
    if ($value =~ m/^\-?\d+$/) {
      return 1;
    }
    if ($value eq "****") {
      return 1;
    }
  }
  elsif ($expected eq "float") {
    if ($value =~ m/^\-?\d+(\.\d+)?$/) {
      return 1;
    }
    if ($value eq "****") {
      return 1;
    }
  }
  elsif ($expected eq "bool") {
    if ($value eq "0" || $value eq "1" || $value eq "****") {
      return 1;
    }
  }
  elsif ($expected eq "string") {
    if ($value =~ m/^[\w*]+$/) {
      return 1;
    }
    if ($value eq "****") {
      return 1;
    }
  }
  elsif ($expected eq "hex") {
    if ($value =~ m/^0x\d+$/) {
      return 1;
    }
    if ($value eq "****") {
      return 1;
    }
  }
  $self->set_error($message . "\n  Expected:"  . $expected . "\n  Found:" . $value . "\n");
  return 0;
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

=item test_datatypes()

    Test whether each item in a column is of the correct data type. Currently
    supports tests for bool, int, string, fload and hex values. Ignores the
    cell if the value is empty (****).

=item test_files()

     Tests the maximum number of rows.

=item tests()

    Returns a string with the number of performed tests.

=item fails()

    Returns a string with the number of failed tests.

=item errors()

    Returns an array with raised errors.

=back

=cut
1;
