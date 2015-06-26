#!/bin/bash

while true;
do

HTML1=$(date)
HTML2=$[ 1000 + $[ RANDOM % 10000 ]]
IMG1=$[ 1000 + $[ RANDOM % 10000 ]]
JS1=$[ 1000 + $[ RANDOM % 10000 ]]
COR1=$[ 1 + $[ RANDOM % 10 ]]
COR2=$[ 1 + $[ RANDOM % 10 ]]
COR3=$[ 1 + $[ RANDOM % 10 ]]
CORES=(gray blue green black royalblue magenta purple red orange yellow)

#index.html
echo '<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Teste NOC</title><link rel="stylesheet" href="site.css"></head><body><h1>Teste de Cache ' $HTML1 '</h1>Texto estatico informado:<br><h2>' $HTML2 '</h2>Imagem estatica informada:<br><br><img src="imagem.png" alt="Imagem Informada"><br><br>Texto dinamico em JavaScript estetico:<br><p id="textodinamico"></p><script src="site.js"></script></body></html>' > index.html
echo "Gerado arquivo index.html"

#imagem.png
convert label:$IMG1 imagem.png
echo "Gerado arquivo imagem.png"

#site.css
echo 'body {background-color:white} h1   {color:'${CORES[$COR1]}'}  h2   {color:'${CORES[$COR2]}'} p    {color:'${CORES[$COR3]}'}' > site.css
echo "Gerado arquivo site.css"

#site.js
echo 'document.getElementById("textodinamico").innerHTML = "Ola JavaScript!' $JS1 '";' > site.js
echo "Gerado arquivo site.js"

sleep 10;
done
