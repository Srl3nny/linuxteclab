#!/bin/bash

# Inicializa o array de JSON
#echo "[" > links.json
echo '{ "arquivos": [' > links.json
# Itera sobre todos os arquivos que correspondem ao padrão file*.md
files=($(ls -v *.md))
for file in "${files[@]}"; do
#for file in $(ls -v *.md); do
    # Extrai o nome do arquivo sem a extensão
   nome_sem_extensao="${file%.md}"
   nome_final="${nome_sem_extensao#*-}"
   nome_final="${nome_final//_/ }"
    
    # Escreve o JSON para o arquivo atual
    echo "  {" >> links.json
    echo "    \"nome\": \"$nome_final\"," >> links.json
    echo "    \"url\": \"conteudos/artedotexto/$file\"," >> links.json
    echo "    \"imagem\": \"assets/setas.svg\"" >> links.json
    echo "  }," >> links.json
done

# Remove a vírgula final e fecha o array
sed -i '$ s/,$//' links.json
echo "] }" >> links.json

