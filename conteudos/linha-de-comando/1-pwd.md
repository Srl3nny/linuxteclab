---
title: "pwd"
youtube: "https://youtu.be/FgfwdUl3i-s?si=IK4moEVv_NtbPE-O"
---



Tudo no Linux é um arquivo. À medida que você se aprofunda no Linux, você entenderá isso, mas por enquanto mantenha isso em mente. Cada arquivo é organizado em uma árvore de diretórios hierárquica. O primeiro diretório no sistema de arquivos é apropriadamente denominado diretório raiz ou root, seria semelhante a unidade C: no Windows. O diretório raiz possui muitas pastas e arquivos nos quais você pode armazenar mais pastas e arquivos, etc. Aqui está um exemplo de diretórios:

```bash
/
/etc/fstab
/home/bruno
/home/bruno/arquivo.txt
/tmp
```

A localização desses arquivos e diretórios é chamada de caminho ou path. Observe no exemplo acima que tenho um arquivo.txt que fica no caminho /home/bruno, esse caminho também é conhecido como diretório home do usuário.

A navegação no sistema de arquivos, assim como na vida real, é útil se você souber onde está e para onde está indo. Para ver onde você está, você pode usar o comando pwd, este comando significa “print working directory” e apenas mostra em qual diretório você está, observe que o caminho vem do diretório raiz.

```bash
$ pwd
```


---

## 📺 Vídeo relacionado

{{< video-youtube >}}

