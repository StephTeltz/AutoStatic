# readfile.sh
# reads lines of a file until EOL; file passed as argument by user

while read line;
do echo "$line"
done < "$1"


