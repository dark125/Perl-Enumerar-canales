open FILE, "<lista-script-mexicano.m3u";
@fichero = <FILE>;
close FILE;
 
my $i = 16;
                               
open FILE, ">lista-script-mexicano2.m3u";
for (@fichero) {
    s/tvg-chno="[^"]*/$& . ++$i/ge;
    print FILE $_;
}
close FILE;




