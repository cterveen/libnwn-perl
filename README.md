# Project title

libnwn-perl

# Description

libnwn-perl is a perl package for handling Neverwinter Nights (NWN) and Neverwinter Nights Enhanced Edition (NWN:EE) files. The package was written to parse and test NWN 2da and tlk files.

This is a beta version. The project was used to test the formatting of 2da files and gain easy access to tlk strings. All 2da specifications and files are included. POD documentation is available in each module. The package is not in CPAN.

No further development is intended.

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

Written by Christiaan ter Veen <https://www.rork.nl/>

Technical details from:

- NWN Wiki - 2da files <https://nwn.wiki/display/NWN1/2da+Files>
- NWN Wiki - tlk: <https://nwn.wiki/display/NWN1/TLK>
- BioWare Aurora Engine - Talk Table File Format: <https://nwn.wiki/pages/viewpage.action?pageId=327727&preview=%2F327727%2F327747%2FBioware_Aurora_TalkTable_Format.pdf>

## License

Copyright 2021 Christiaan ter Veen

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software within the restrictions of the Neverwinter Nights End-User License agreement but without restriction otherwise, including without limitation the rights to use, copy, modify, merge, publish, distribute and/or sublicense copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
