if [ $# -ne 2 ]
then
	echo "./add_title_to_dot.sh <filename> <title>"
	exit 1
fi

sed -i "2i label=\"$2\";" $1
sed -i "2i labelloc=t;" $1