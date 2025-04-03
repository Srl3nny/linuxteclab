# Ordenação de Textos com o Comando `sort`

O comando `sort` é uma ferramenta útil para organizar linhas de texto de acordo com um critério predeterminado. Vamos ver exemplos de como usá-lo para ordenar linhas de um arquivo de texto.

### Exemplo 1: Ordenação Alfabética

Continuemos com o arquivo `exemplo.txt`, que contém os seguintes termos:
```text
arq.txt
 rato
 cachorro
 gato
 elefante
 pato
```
Quando executamos o comando `sort` sobre esse arquivo, obtemos o seguinte resultado:
```text
$ sort arq.txt
 cachorro
 elefante
 gato
 pato
 rato
```
A ordenação é feita alfabeticamente, portanto, os termos começam a aparecer na ordem correta.

### Exemplo 2: Ordenação em Ordem inversa

Mais um exemplo interessante é a ordenação em ordem inversa. Para isso, podemos usar a opção `-r` do comando `sort`. Vou mostrar como:
```text
$ sort -r arq.txt
 rato
 pato
 gato
 elefante
 cachorro
```
Agora, a ordenação é feita em ordem inversa, portanto, os termos aparecem na ordem oposta.

