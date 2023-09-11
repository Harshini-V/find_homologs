#!/Users/harshinivummadi/bin

blastn -query "$1" -subject "$2" -task megablast -outfmt 6 -out "$3"
perfect_matches_file=$(wc -l "$3")
perfect_matches=$(echo $perfect_matches_file | sed "s/$3//")
echo $perfect_matches "matches"