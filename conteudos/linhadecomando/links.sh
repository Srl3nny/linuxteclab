#!/bin/bash

# Inicializa o array de JSON
#echo "[" > links.json
echo '{ "arquivos": [' > links.json
# Itera sobre todos os arquivos que correspondem ao padrão file*.md
for file in $(ls -v *.md); do
    # Extrai o nome do arquivo sem a extensão
   nome_sem_extensao="${file%.md}"
   nome_final="${nome_sem_extensao#*-}"
    
    # Escreve o JSON para o arquivo atual
    echo "  {" >> links.json
    echo "    \"nome\": \"$nome_final\"," >> links.json
    echo "    \"url\": \"conteudos/linhadecomando/$file\"," >> links.json
    echo "    \"imagem\": \"assets/setas.svg\"" >> links.json
    echo "  }," >> links.json
done

# Remove a vírgula final e fecha o array
sed -i '$ s/,$//' links.json
echo "] }" >> links.json

