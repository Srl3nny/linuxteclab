---
title: Pipe (|) e tee
youtube: https://youtu.be/lOMrxK7q4yA?si=86yhzRFevp78MRRk
pagetitle: Pipe e tee · encadear e registrar saídas
description: Pipe e tee · encadear e registrar saídas. Tutorial em português da trilha
  Texto e filtros do LinuxTecLab.
categories:
- Texto e filtros
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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-04.json" aria-labelledby="arte-do-texto-04-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-04-exercise-title">Desafio · pipe_and_tee</h3>
  <p class="exercise-prompt">Liste a pasta atual com ls e use tee para mostrar a saída e salvá-la em lista.txt.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-04-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-04-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ls | tee lista.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
