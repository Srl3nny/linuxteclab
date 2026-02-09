---
title: "cp"
youtube: "https://youtu.be/7Zl1yXe-MB8?si=fb5BDL2H0AK6XXEv"
---

Assim como copiar e colar arquivos em outros sistemas operacionais, o shell nos oferece uma maneira ainda mais simples de fazer isso, e nem precisamos do mouse para isso.

```bash
$ cp meuarquivo /home/bruno/
```

meuarquivo é o arquivo que você deseja copiar e /home/bruno é para onde você está copiando o arquivo. Você pode copiar vários arquivos e diretórios, bem como usar curingas. Um curinga é um caractere que pode substituir uma seleção baseada em padrão, proporcionando mais flexibilidade. Você pode usar curingas em vários comandos para obter mais flexibilidade.

- \* o curinga dos curingas, é usado para representar todos os caracteres únicos ou qualquer string.
- ? usado para representar um caractere.
- \[\] usado para representar qualquer caractere entre colchetes.

```bash
$ cp *.jpg /home/bruno/Imagens
```

Isso copiará todos os arquivos com extensão .jpg em seu diretório atual para o diretório Imagens. Uma opção útil é  a  -r, isso copiará recursivamente os arquivos e diretórios dentro de um diretório. Tente fazer um cp em um diretório que contém alguns arquivos no diretório Documentos. Não funcionou, não é? Bem, isso é porque você também precisará copiar os arquivos e diretórios internos com o comando -r.

Uma coisa a observar: se você copiar um arquivo para um diretório que tenha o mesmo nome de arquivo, o arquivo será substituído por tudo o que você está copiando. Isso não é legal se você tiver um arquivo que não deseja que seja substituído acidentalmente, pior ainda se não tiver backup. Você pode usar a opção -i (interativo) para avisar antes de substituir um arquivo.

```bash
$ cp -i meuarquivo /home/bruno/
```


---

## 📺 Vídeo relacionado

{{< video-youtube >}}

