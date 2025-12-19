---
title: "Pipe (|) e tee"
youtube: "https://youtu.be/lOMrxK7q4yA?si=86yhzRFevp78MRRk"
---



Iremos conhecer o pipe (|) agora, vamos primeiro executar o comando:

```bash
$ ls -lah /etc
```

&nbsp;Você deverá ver uma lista muito longa de itens; é até um pouco difícil de ler. Em vez de redirecionar essa saída para um arquivo, não seria bom se pudéssemos ver a saída em outro comando como less, lembre que o less é um paginador? Bem, nós podemos!

```bash
$ ls -lah /etc | less
```

O operador pipe |, representado por uma barra vertical, permite-nos obter o stdout de um comando e torná-lo o stdin para outro processo. Nesse caso, pegamos o stdout do comando ls  e o direcionamos para a entrada do comando less. O comando pipe é extremamente útil e continuaremos a usá-lo por toda a eternidade.

Bem, e se eu quisesse escrever a saída do meu comando em dois fluxos diferentes? Isso é possível com o comando tee, nesse caso veremos a saída de ls na tela e também será armazenada no arquivo saida.txt:

```bash
$ ls | tee saida.txt
```

&nbsp;

---

## 📺 Vídeo relacionado

{{< video-youtube >}}

