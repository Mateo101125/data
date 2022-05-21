# COMO HISE LA TAREA
## FILAS Y COLUMNAS SOLO DE n1.txt
- Primero coloque 
ECHO $1 > netsize.txt
esto al llamar con bash y poner n1.txt me grabaria el mobre y me guardaria en ese archivo de texto
- segundo cre un echo para que me apareciera filas en texto e ingrese el comando cut -d y entre las comillas puse el espacio porque en el documento se separa por espacio 
-f 1 para que solo tome la fila 1 y el marcador $1 que cuando ingresara el n1 me iniciara el codigo, el tail para que me cuente de abajo y puse -n +1 que me contaria 
todas las filas  por ultimo el wc -l me daria el numero de filas
echo "FILAS" >> netsize.txt
cut -d " " -f 1  $1 | tail -n +1 | wc -l  >> netsize.txt
- para columnas utilice el comado head que me contaria tome solo el inicio, luego utilice el comando grep -o para que ccuente solo de forma horiizontal y el wc -l para 
que lo contabilice
echo "COLUMNAS" >> netsize.txt
head -n +1 $1| grep -o " "|wc -l  >> netsize.txt

## FILAS Y COLUMNAS DE TODO
- lo que hise para que cuente es utilizar los comandos siguiente
#!/bin/bash
for (( c=1; c<=59; c++))
do
estos permitiran que el accion que coloque despues de du se repita n veces o en n documentos
- el codigo que utilice es el mismo solo que remplace el $1 por n$C.txt para que el $c sea el numero de c que ingresamos arriba y me realice la accion en el archivo
echo n$c.txt >> netsize_all.txt
echo "FILAS" >> netsize_all.txt
cut -d " " -f 1 n$c.txt | tail -n +1 | wc -l  >> netsize_all.txt
echo "COLUMNAS" >> netsize_all.txt
head -n +1 n$c.txt | grep -o " "|wc -l  >> netsize_all.txt
tambien cambie el archivo de texto qen donde se va a guardar
- por ultimo el done hace delimita la accion
done
