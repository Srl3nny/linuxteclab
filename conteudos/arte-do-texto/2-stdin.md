---
title: stdin (Standard in)
youtube: https://youtu.be/lOMrxK7q4yA?si=xf6UxgGEucrF2kPO
pagetitle: stdin · entender a entrada padrão
description: stdin · entender a entrada padrão. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

Ok vimos que temos o stdout que podemos usar, como um arquivo ou a tela como forma de saída. Bem, também existem diferentes fluxos de entrada padrão (stdin) que podemos usar. Sabemos que temos stdin de dispositivos como o teclado, mas podemos usar arquivos, saída de outros processos e do terminal também, vamos ver um exemplo.

Vamos usar o arquivo arq.txt neste exemplo, lembre-se de que ele continha o texto Hello World.

```bash
$ cat < arq.txt
```

Executando o comando vemos que o arq.txt é colocado no stdin do comando cat, e o conteúdo do arquivo é mostrado na tela.

Podemos agora enviar o stdout do comando cat para um arquivo.

```bash
$ cat < arq.txt > saida.txt
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
