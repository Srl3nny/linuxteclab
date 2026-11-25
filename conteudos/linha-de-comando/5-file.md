---
title: file
pagetitle: file · identificar tipos de arquivo
description: file · identificar tipos de arquivo. Tutorial em português da trilha
  Linha de comando do LinuxTecLab.
categories:
- Linha de comando
---

Note que o nome do arquivo no Linux muitas vezes não está de acordo com a extensão padrão, como você provavelmente já viu em outros sistemas operacionais como o Windows. Normalmente você esperaria um arquivo chamado foto.jpeg e um arquivo de imagem JPEG.

No Linux, os nomes de arquivos não são necessários para representar o conteúdo do arquivo. Você pode criar um arquivo chamado engraçado.gif que na verdade não é um GIF. Para descobrir que tipo de arquivo é , você pode usar o comando file. Ele mostrará uma descrição do conteúdo do arquivo.

```bash
$ file foto.jpg
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/file.json" aria-labelledby="file-exercise-title">
  <h3 class="exercise-title" id="file-exercise-title">Missão 05 · Descubra o tipo de arquivo</h3>
  <p class="exercise-prompt">Digite um comando file para identificar o tipo de arquivo de foto.jpg pelo conteúdo.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="file-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="file-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é file foto.jpg.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
