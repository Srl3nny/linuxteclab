---
title: stdout (standard out)
youtube: https://youtu.be/lOMrxK7q4yA?si=xf6UxgGEucrF2kPO
pagetitle: stdout · entender a saída padrão
description: stdout · entender a saída padrão. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-01.json" aria-labelledby="arte-do-texto-01-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-01-exercise-title">Desafio · stdout</h3>
  <p class="exercise-prompt">Use echo para escrever Linux na saída padrão e redirecioná-la para saida.txt, substituindo o conteúdo anterior.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-01-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é echo Linux &gt; saida.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
