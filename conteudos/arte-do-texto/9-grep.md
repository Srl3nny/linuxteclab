---
title: Comando Grep
youtube: null
pagetitle: grep · procurar padrões em arquivos
description: grep · procurar padrões em arquivos. Tutorial em português da trilha
  Texto e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

# O comando grep: o seu melhor amigo no tratamento de texto

O **grep** é provavelmente o comando de tratamento de texto mais utilizado. Permite que você procure em arquivos por caracteres que correspondam a um padrão específico. Se você quisesse saber se um arquivo existe em um diretório específico ou se um determinada string esta presente em um arquivo, você pode utilizar o **grep**!

Vamos usar o arquivo **exemplo.txt** como referência:

```
 rato
 cachorro
 gato
 elefante
 pato
```

```bash
$ grep rato exemplo.txt
```

E você descobrirá se o grep encontrou o termo “rato” no arquivo exemplo.txt, pois ele mostrará a linha com a palavra!

Além disso, você também pode procurar padrões que não dependem da case (maiúsculas ou minúsculas) com a flag -i:

```bash
$ grep -i patrimOnio pat_arquivo.txt
```

Para tornar ainda mais flexível o grep, você pode combinar ele com outros comandos utilizando o operador |:

```bash
$ env | grep -i User
```

Como você pode ver, o grep é muito versátil. Além disso, você também pode usar expressões regulares no seu padrão:

```bash
$ ls /diretório | grep -E '.txt$'
```

Isso deve retornar todos os arquivos que terminam com “.txt” no diretório especificado!

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
