---
Title: find
title: find · localizar arquivos
pagetitle: find · localizar arquivos
description: find · localizar arquivos. Tutorial em português da trilha Linha de comando
  do LinuxTecLab.
categories:
- Linha de comando
---

Com todos esses arquivos que temos no sistema pode ser um pouco desafiador tentar encontrar um arquivo específico. Para isso podemos usar o find.

```bash
$ find /home -name livro.pdf
```

No uso básico do comando find, você terá que especificar o diretório que irá pesquisar e o que está procurando, neste caso estamos tentando encontrar um arquivo com o nome de livro.pdf.

Você pode especificar que tipo de arquivo está tentando encontrar, como um diretório.

```bash
$ find /home -type d -name documentos
```

Junto ao -type a opção d se refere a diretório, a opção f se refere a um arquivo comum.

Uma coisa legal a se notar é que find não para no diretório que você está pesquisando, ele também procurará dentro de quaisquer subdiretórios que esse diretório possa ter.

E caso você queira que a pesquisa seja case insensitive, use -iname.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/find.json" aria-labelledby="find-exercise-title">
  <h3 class="exercise-title" id="find-exercise-title">Missão 14 · Localize um arquivo pelo nome</h3>
  <p class="exercise-prompt">Digite um comando find para procurar recursivamente, a partir da pasta atual, arquivos comuns com o nome exato notas.txt.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="find-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="find-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é find . -type f -name notas.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
