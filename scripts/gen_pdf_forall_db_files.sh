for f in $(ls *.db); do fname=$(echo $f|awk -F "." '{print $1}');./analyzer -f $fname.dot $fname.db; dot -Tpdf $fname.dot > $fname.pdf; done
