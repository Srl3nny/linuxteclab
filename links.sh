#!/bin/bash

BASE_DIR="conteudos"

# Percorre todas as subpastas dentro de conteudos/
for dir in "$BASE_DIR"/*/; do
    # Garante que é um diretório
    [[ -d "$dir" ]] || continue  

    # Pega apenas os arquivos .md dentro do diretório
    files=("$dir"*.md)
    
    # Verifica se existem arquivos .md na pasta
    if [[ ! -e "${files[0]}" ]]; then
        echo "Nenhum arquivo .md encontrado em $dir, pulando..."
        continue
    fi

    # Caminho do JSON a ser criado dentro da pasta
    json_file="${dir}links.json"

    # Inicializa o JSON
    echo '{ "arquivos": [' > "$json_file"

    count=${#files[@]}  # Quantidade de arquivos

    # Itera sobre os arquivos .md
    for ((i=0; i<count; i++)); do
        file="${files[i]}"
        filename=$(basename "$file")  # Nome do arquivo sem caminho
        nome_sem_extensao="${filename%.md}"
        nome_final="${nome_sem_extensao#*-}"
        nome_final="${nome_final//_/ }"

        # Escreve no JSON
        echo "  {" >> "$json_file"
        echo "    \"nome\": \"$nome_final\"," >> "$json_file"
        echo "    \"url\": \"$file\"," >> "$json_file"
        echo "    \"imagem\": \"assets/setas.svg\"" >> "$json_file"
        
        # Adiciona vírgula apenas se não for o último item
        if [[ $i -lt $((count - 1)) ]]; then
            echo "  }," >> "$json_file"
        else
            echo "  }" >> "$json_file"
        fi
    done

    # Fecha o JSON corretamente
    echo "] }" >> "$json_file"

    echo "Arquivo $json_file gerado com sucesso!"
done

