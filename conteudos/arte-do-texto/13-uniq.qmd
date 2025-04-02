# **Comandos úteis para manipulação de texto**

Existem muitos comandos úteis para manipular texto no console. Um desses comandos é o `uniq`, que é uma ferramenta muito prática para eliminar linhas duplicadas em um arquivo.

## **Exemplo de uso**

Imagine que você tem um arquivo chamado `arq.txt` com várias linhas duplicadas:

```markdown
arq.txt
livro
livro
revista
revista
computador
```

Se você quiser remover essas linhas duplicadas, basta utilizar o comando `uniq`:

```bash
$ uniq arq.txt
livro
revista
computador
```

## **Contagem de ocorrências**

Se você quiser saber quantas vezes cada linha aparece no arquivo, basta adicionar a opção `-c` ao comando `uniq`:

```bash
$ uniq -c arq.txt
2 livro
2 revista
1 computador
```

## **Exibição de valores únicos**

Se você quiser exibir apenas as linhas únicas do arquivo, basta utilizar a opção `-u` ao comando `uniq`:

```bash
$ uniq -u arq.txt
computador
```

## **Exibição de valores duplicados**

Se você quiser exibir apenas as linhas duplicadas do arquivo, basta utilizar a opção `-d` ao comando `uniq`:

```bash
$ uniq -d arq.txt
livro
revista
```

