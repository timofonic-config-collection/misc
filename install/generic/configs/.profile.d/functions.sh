
mtime() {
    perl -wle'open my $fh, "<", $ARGV[0]; print +(stat($fh))[9];'
}

atime() {
    perl -wle'open my $fh, "<", $ARGV[0]; print +(stat($fh))[8];'
}

