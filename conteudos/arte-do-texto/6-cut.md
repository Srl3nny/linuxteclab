---
title: cut
youtube: https://youtu.be/_7kDsfHoz4k?si=vd7RTy57BcISoW6h
pagetitle: cut · extrair campos de texto
description: cut · extrair campos de texto. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

Aprenderemos alguns comandos úteis que você pode usar para processar texto. Antes de começarmos, vamos criar um arquivo com o qual trabalharemos. 

```bash
$ echo 'O Linux é rápido; o Linux é seguro' > exemplo.txt
```

O comando que aprenderemos é o comando cut. Extrai partes de texto de um arquivo.

Para extrair o conteúdo por uma lista de caracteres:

```bash
   $ cut -c 5 exemplo.txt
```

&nbsp;Isso mostra o quinto caractere em cada linha do arquivo. Neste caso é “n", observe que o espaço também conta como caractere.

Para extrair o conteúdo de um campo, precisaremos fazer uma pequena modificação. O sinalizador -f ou campo corta o texto com base nos campos; por padrão, ele usa TABs como delimitadores, portanto, tudo separado por uma TAB é considerado um campo. 

Você pode combinar o sinalizador de campo com o sinalizador de delimitador para extrair o conteúdo por um delimitador personalizado, assim o -d indica o delimitador que por padrão é o TAB:

```bash
$ cut -f 1 -d ";" exemplo.txt
```

Você pegará o primeiro campo -f 1, e usará como delimitador o caracter ";" -d ";". Deverá ver no terminal "O Linux é rápido".
E caso use -f 2, terá o conteúdo do segundo campo "O Linux é seguro"

&nbsp;

---

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
