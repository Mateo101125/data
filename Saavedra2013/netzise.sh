ECHO $1 > netsize.txt
echo "FILAS" >> netsize.txt
cut -d " " -f 1  $1 | tail -n +1 | wc -l  >> netsize.txt
echo "COLUMNAS" >> netsize.txt
head -n +1 $1| grep -o " "|wc -l  >> netsize.txt



