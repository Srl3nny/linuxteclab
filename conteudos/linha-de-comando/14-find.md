---
Title: "find"
---

Com todos esses arquivos que temos no sistema pode ser um pouco desafiador tentar encontrar um arquivo específico. Para isso podemos usar o find.

```bash
$ find /home -name livro.pdf
```

No uso básico do comando find, você terá que especificar o diretório que irá pesquisar e o que está procurando, neste caso estamos tentando encontrar um arquivo com o nome de livro.pdf.

Você pode especificar que tipo de arquivo está tentando encontrar, como um diretório.

```bash
$ find /home -type d -name documentos
```

Junto ao -type a opção d se refere a diretório, a opção f se refere a um arquivo comum.

Uma coisa legal a se notar é que find não para no diretório que você está pesquisando, ele também procurará dentro de quaisquer subdiretórios que esse diretório possa ter.

E caso você queira que a pesquisa seja case insensitive, use -iname.
