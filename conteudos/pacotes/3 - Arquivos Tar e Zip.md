# **Arquivos e Compressão no Linux**

Aprenda a gerenciar arquivos compactados no Linux antes de instalar pacotes de diferentes gerenciadores.
O gzip é um compactador que trabalha apenas com um único arquivo por vez, ou seja, ele não consegue juntar vários arquivos em um só.

Para resolver isso, usamos o tar (Tape ARchiver), que serve para empacotar vários arquivos e diretórios em um único arquivo .tar.

Vamos começar com gzip.

## **Compressão com Gzip**

O gzip é um programa comum em Linux que compreende arquivo em formato `.gz`. Para comprimir um arquivo:

```bash
$ gzip meuarquivo.txt
```

Para descomprimir:

```bash
$ gunzip meuarquivo.txt.gz
```

## **Criar arquivos ZIP com Tar**

Infelizmente, o gzip não é capaz de adicionar múltiplos arquivos em um arquivo ZIP. Felizmente, o programa tar (short for Tape ARchiver) permite fazer isso. Quando você cria um arquivo com tar, ele terá um prefixo `.tar`.

Exemplo:

```bash
$ tar -cvf meuarquivo.tar arquivo1.txt arquivo2.txt
```

Opções:

- `c`: criar um novo arquivo
- `v`: ser verboso e mostrar o que está fazendo
- `f`: fornece o nome do arquivo ZIP

## **Extrair arquivos ZIP com Tar**

Para extrair os conteúdo de um arquivo ZIP, use:

```bash
$ tar -xvf meuarquivo.tar
```


Opções:

- `x`: extrair os conteúdos do arquivo ZIP
- `v`: ser verboso e mostrar o que está fazendo
- `f`: fornece o nome do arquivo ZIP


O 
## **Compressão e descompressão com Tar e Gzip**

Muitas vezes, você encontrará um arquivo ZIP que foi compresso, como `meuarquivo.tar.gz`. Basta descomprimir com `gunzip` e, em seguida, extrair os conteúdos do arquivo ZIP com `tar`.

Exemplo:

```bash
$ gunzip meuarquivo.tar.gz
$ tar xvf meuarquivo.tar
```

Alternativamente, você pode usar a opção `z` com `tar`, que irá usar o gzip ou gunzip automaticamente.

Criar um arquivo ZIP compresso:

```bash
$ tar -czf meuarquivo.tar.gz meuarquivo1.txt meuarquivo2.txt
```

Descompremir e extrair:

```bash
$ tar -xzf meuarquivo.tar.gz
```

## **Outras Opções**

- 'j': Utiliza o bzip2 para compactar e descompactar os arquivos .tar.bz2;
- 'J': Utiliza o xz para compactar e descompactar os arquivos .tar.xz

## **Exemplos de uso**

Vamos usar de exemplo, fazer um backup do diretório Documentos do home do usuário Bruno.

```bash
$ tar -czvf /home/bruno/documentos.tar.gz /home/bruno/Documentos
```

Outra opção muito importante é verificar os arquivos existente, antes da descompactação.


```bash
 tar -tzf /home/bruno/Documentos.tar.gz
```





