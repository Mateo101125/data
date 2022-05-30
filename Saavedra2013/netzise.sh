#para que me coloque el numero de documento
echo $1 <> netsize.txt 
# para que me escriba fila
echo "FILAS" >> netsize.txt
#codigo para que me cuente la fila, cut para que me corte solo la fila, tail 
#me va  contar desde abajo hacia arriba y  wc se para que me de el valor 
#numerico en especifico el -l para que me de la fila
cut -d " " -f 1  $1 | tail -n +1 | wc -l  >> netsize.txt
#para que me escriba columna
echo "COLUMNAS" >> netsize.txt
# head para que comience desde la primera, grep para que me cuente los espacios
# horizontalmente y wc -l para que me de el valor numerico
head -n +1 $1| grep -o " "|wc -l  >> netsize.txt



