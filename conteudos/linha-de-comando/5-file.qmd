# file

Ok, acabamos de aprender sobre o comando touch, vamos voltar um pouco a isso. Você notou que o nome do arquivo não estava de acordo com a extensão padrão, como você provavelmente já viu em outros sistemas operacionais como o Windows? Normalmente você esperaria um arquivo chamado banana.jpeg e um arquivo de imagem JPEG.

No Linux, os nomes de arquivos não são necessários para representar o conteúdo do arquivo. Você pode criar um arquivo chamado engraçado.gif que na verdade não é um GIF. Para descobrir que tipo de arquivo é , você pode usar o comando file. Ele mostrará uma descrição do conteúdo do arquivo.

```bash
$ file banana.jpg
```