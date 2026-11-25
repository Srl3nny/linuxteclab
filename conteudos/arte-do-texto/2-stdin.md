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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-02.json" aria-labelledby="arte-do-texto-02-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-02-exercise-title">Desafio · stdin</h3>
  <p class="exercise-prompt">Use cat com redirecionamento de entrada para ler dados.txt.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-02-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é cat &lt; dados.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
