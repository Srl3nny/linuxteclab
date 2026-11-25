---
title: man
youtube: https://youtu.be/FgfwdUl3i-s?si=ASXCPe0jeGiPSCCg
pagetitle: man · consultar manuais de comandos
description: man · consultar manuais de comandos. Tutorial em português da trilha
  Linha de comando do LinuxTecLab.
categories:
- Linha de comando
---

Um comando que pode te salvar em muitos momentos é o man. É uma interface para manuais, com ele você pode buscar ajuda sem precisar do chatGPT :) . 

O man é organizado por seções, cada seção é representada por um número, veja a tabela abaixo que descreve as seções. Mas basicamente, os comandos são da seção 1.

Podemos fazer uma pesquisa sobre o comando ls.

```bash
$ man ls
```

E para fazer um pesquisa sobre manuais que contenham a palavra passwd:

```bash
$ man -k passwd
```


---

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/man.json" aria-labelledby="man-exercise-title">
  <h3 class="exercise-title" id="man-exercise-title">Missão 13 · Consulte o manual</h3>
  <p class="exercise-prompt">Digite um comando man para abrir a página de manual de ls.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="man-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="man-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é man ls.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
