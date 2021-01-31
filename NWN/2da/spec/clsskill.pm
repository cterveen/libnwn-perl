package NWN::2da::spec::clsskill;

sub new {
  my $class = shift;
  my $self = {};

  $self->{type} = "cls_skill";
  $self->{maxrows} = 0;
  $self->{parent} = "classes.2da/SkillsTable";
  $self->{label} = "SkillLabel";

  $self->{header}->{"[id]"} = {
    "reference" => "",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{SkillLabel} = {
    "reference" => "",
    "format" => ["string"],
  };
  $self->{header}->{SkillIndex} = {
    "reference" => "row/skills.2da",
    "format" => ["int", "min", 0],
  };
  $self->{header}->{ClassSkill} = {
    "reference" => "",
    "format" => ["bool"],
  };

  bless($self, $class);
}

=head1 NAME

    NWN::2da::spec::clsskill

=head1 SYNOPSIS

    my $spec = NWN::2da->new()
       $spec->load("CLS_SKILL_FIGHT.2da");

    print $spec->label();

=head1 DESCRIPTION

    This module contains the specification of the cls_skill_*.2da file. Do not
    call this module directly but use the methods on file specification in
    NWN::2da instead.

=head1 MORE INFO

    NWN::2da
    https://nwn.fandom.com/wiki/Cls_skill_*.2da

=cut

1;
