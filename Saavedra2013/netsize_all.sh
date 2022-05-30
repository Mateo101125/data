#!/bin/bash #llama al bash 
for (( c=1; c<=59; c++)) #me hace el bucle de 1 a 59 que son los documentos
do  #me dice la accion que va hace
# aqui utilice el codigo que utilice a en netzise pero cambie el $1 por 
# $c para que  me tome la accion que señale en el for  de 1 a 59
echo n$c.txt >> netsize_all.txt 
echo "FILAS" >> netsize_all.txt
cut -d " " -f 1 n$c.txt | tail -n +1 | wc -l  >> netsize_all.txt
echo "COLUMNAS" >> netsize_all.txt
head -n +1 n$c.txt | grep -o " "|wc -l  >> netsize_all.txt
done
# el done indica el cierre de la accion 
