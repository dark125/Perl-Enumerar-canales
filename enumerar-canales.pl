open FILE, "<lista-script-mex-editado.m3u";
@fichero = <FILE>;
close FILE;
 
my $i = 0;
                               
open FILE, ">lista-script-mex-editado-2.m3u";
for (@fichero) {
    s/tvg-chno="[^"]*/$& . ++$i/ge;
    print FILE $_;
}
close FILE;




