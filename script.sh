# Escriba su código aquí
sed 's/,\([0-9]\)/.\1/' data.csv > out.11 #Rempazo , seguido de un número por . y el mismo numero
sed 's/\//-/g' out.11 > out.12 #Remplazo / por -  Cascarita: para identificar el / hay que poner \/
sed 's/-\([0-9][0-9]\);/-20\1;/' out.12 > out.13 #cambio el formato de YY a YYYY
sed 's/\(^[0-9]\)-/0\1-/' out.13 > out.14 #cambio el formato de M a MM
sed 's/-\([0-9]\)-/-0\1-/' out.14 > out.15 #cambio el formato de D a DD
sed 's/-\([0-9][0-9]\);/-20\1;/' out.15 > out.16 #cambio el formato de YY a YYYY
sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\)/\3-\2-\1/' out.16 > out.17 ## Cambio el orden de los caracteres 123 a 321
sed 's/;;/;\\N;/g' out.17 > out.18 ##Completo los null \N
sed 'y/abcn/ABCN/' out.18 > out.19 #Remplaza a por a por A
sed 's/;N;/;\\N;/g' out.19 > out.20 ##Completo los N por \N
sed 's/;\r/;\\N\r/g' out.20 > out.21 #agrego el null al final
##sed 's/;\r/;\\N\r/g' out.20 > out.21 #agrego el null al final
sed 's/;/,/g' out.21 > out.22 ##Remplazo los ; por ,
sed 's/,N,/,\N,/g' out.22 > out.23 ##Completo los N por \N
sed 's/,N\r/,\\N\r/g' out.23 > out.24 ##Completo los N por \N
##sed 's/,N\r/,\\N\r/g' out.23 > out.24 ##Completo los N por \N
cp out.24 data1.csv #
cat data1.csv #
rm out*
