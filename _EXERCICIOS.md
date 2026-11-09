# Exercício piloto de pwd

A aula de pwd contém um terminal didático com correção de respostas, dicas graduais, solução e reinício. O gabarito público está em exercicios/pwd.json. A função avaliar, em assets/exercicios/avaliar.mjs, valida as respostas sem executar comandos. terminal.mjs controla a interface. terminal.css define a aparência.

Para testar na prévia do Cloudflare, abra /conteudos/linha-de-comando/1-pwd#pratique-no-terminal. Tente ls, pwdd, pwd com argumentos e pwd. Use os botões de dica, solução e reinício. A conclusão fica salva no navegador quando uma resposta correta é enviada. Consultar a solução não marca o exercício como concluído.

Para acrescentar exercícios, crie um JSON com a mesma estrutura e insira o bloco HTML da aula, usando IDs únicos e ajustando data-exercise para o novo arquivo. Inclua os módulos e CSS uma vez por página. O motor atual confere respostas de um único comando. Não simula um sistema de arquivos.

O build Quarto copia os diretórios exercicios e assets/exercicios para docs. As respostas são públicas, próprias para estudo individual. A validação aceita apenas as variantes explicitadas no JSON e oferece uma orientação genérica para outras entradas.
