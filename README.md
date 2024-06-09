# Project title

libnwn-perl

# Description

libnwn-perl is a perl package for handling Neverwinter Nights (NWN) and Neverwinter Nights Enhanced Edition (NWN:EE) files. The package was written to parse and test NWN 2da and tlk files.

This is a beta version. All 2da specifications and files are included. POD documentation is available in each module. The package is not in CPAN.

The project was used to test the formatting of 2da files and gain easy access to tlk strings. Further development is not intended.

## Installation

Copy all files to a perl module directory

## Use

The modules that can be used directly are NWN::2da, NWN::tlk and NWN::2da::Test. The other modules contain information in specific files.

#### NWN::2da

    use NWN::2da;
    
    my $tda = NWN::2da->new();
       $tda->load("./classes.2da");
    
    print $tda->version();

#### NWN::tlk

    use NWN::tlk
    
    my $tlk = NWN::tlk->new();
       $tlk->load("./dialog.tlk");
    
    print $tlk->get_string(4);

#### NWN::2da::test

    use NWN::2da::test;
    my $test = NWN::2da::test->new();
       $test->load($file);
       $test->test_file();
       $test->test_values();

    print "Performed " . $test->tests() . " tests\n";
    print "Found " . $test->fails() . " errors\n";

## Credits

Technical details from:

- NWN Wiki - 2da files <https://nwn.wiki/display/NWN1/2da+Files>
- NWN Wiki - tlk: <https://nwn.wiki/display/NWN1/TLK>
- BioWare Aurora Engine - Talk Table File Format: <https://nwn.wiki/pages/viewpage.action?pageId=327727&preview=%2F327727%2F327747%2FBioware_Aurora_TalkTable_Format.pdf>

## License

To be decided, but consider it free to use, modify and distribute.
