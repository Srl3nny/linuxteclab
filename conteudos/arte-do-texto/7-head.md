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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-07.json" aria-labelledby="arte-do-texto-07-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-07-exercise-title">Desafio · head</h3>
  <p class="exercise-prompt">Use head para mostrar as primeiras 5 linhas de dados.txt.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-07-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-07-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é head -n 5 dados.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
