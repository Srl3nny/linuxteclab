---
title: head
youtube: ''
pagetitle: head · ler as primeiras linhas
description: head · ler as primeiras linhas. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

Vamos imaginar que temos um arquivo muito extenso; na verdade, temos muitos arquivos longos para escolher.

Experimente executar o comando

```bash
$ cat /var/log/syslog
```

Você verá várias páginas de texto. Mas e se eu quiser ver apenas as primeiras linhas desse arquivo? Podemos fazer isso com o comando `head`.

Por padrão, o comando `head` mostra as primeiras 10 linhas de um arquivo. Portanto, ao executar:

    $ head /var/log/syslog

Você verá essas linhas iniciais. Se desejar modificar a contagem de linhas para um número específico, como por exemplo, as primeiras 15 linhas, você pode usar a opção `-n`.  
O comando ficaria assim:

    $ head -n 15 /var/log/syslog

Aqui, a flag `-n` indica o número de linhas que você deseja visualizar.


---

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
