for f in $(ls *.dot); do fname=$(echo $f|awk -F "." '{print $1}'); dot -Tpdf $fname.dot > $fname.pdf; done
