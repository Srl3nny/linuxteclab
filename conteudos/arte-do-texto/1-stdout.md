---
title: "stdout (standard out)"
youtube: "https://youtu.be/lOMrxK7q4yA?si=xf6UxgGEucrF2kPO"
---


Um assunto bem interessante no mundo do terminal são os fluxos de E/S (entrada/saída). Veja o comando abaixo.

```bash
$ echo Hello World > arq.txt
```

O que aconteceu? Bem, verifique o diretório onde você executou esse comando e eis que você deverá ver um arquivo chamado arq.txt, olhe dentro desse arquivo e deverá ver o texto Hello World. Muitas coisas aconteceram em um comando, então vamos detalhar.

A primeira parte desse comando é:

```bash
$ echo Hello World
```

Sabemos que o comando echo imprime Hello World na tela, mas como? Os processos usam fluxos de E/S para receber entrada e retornar saída. Por padrão, o comando **echo** pega a entrada (entrada padrão ou stdin) do teclado e retorna a saída (saída padrão ou stdout) para a tela. É por isso que quando você digita echo Hello World em seu shell, você obtém Hello World na tela. No entanto, o redirecionamento de E/S nos permite alterar esse comportamento padrão, proporcionando maior flexibilidade de arquivos.

Vamos prosseguir para a próxima parte do comando:

```bash
>
```

O **\>** é um operador de redirecionamento que nos permite alterar para onde vai a saída padrão (stdout). Ele nos permite enviar a saída de echo Hello World para um arquivo em vez de para a tela. Se o arquivo ainda não existir, ele será criado para nós. No entanto, se existir, ele será sobrescrito. E é basicamente assim que funciona o redirecionamento stdout!

Bem, digamos que eu não queira sobrescrever meu arq.txt, felizmente também existe um operador de redirecionamento para isso, **\>>** ou seja você fará um append no arquivo.

```bash
$ echo Hello World >> saida.txt
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

