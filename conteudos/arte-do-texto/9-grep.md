---
title: Comando Grep
youtube: null
pagetitle: grep · procurar padrões em arquivos
description: grep · procurar padrões em arquivos. Tutorial em português da trilha
  Texto e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

# O comando grep: o seu melhor amigo no tratamento de texto

O **grep** é provavelmente o comando de tratamento de texto mais utilizado. Permite que você procure em arquivos por caracteres que correspondam a um padrão específico. Se você quisesse saber se um arquivo existe em um diretório específico ou se um determinada string esta presente em um arquivo, você pode utilizar o **grep**!

Vamos usar o arquivo **exemplo.txt** como referência:

```
 rato
 cachorro
 gato
 elefante
 pato
```

```bash
$ grep rato exemplo.txt
```

E você descobrirá se o grep encontrou o termo “rato” no arquivo exemplo.txt, pois ele mostrará a linha com a palavra!

Além disso, você também pode procurar padrões que não dependem da case (maiúsculas ou minúsculas) com a flag -i:

```bash
$ grep -i patrimOnio pat_arquivo.txt
```

Para tornar ainda mais flexível o grep, você pode combinar ele com outros comandos utilizando o operador |:

```bash
$ env | grep -i User
```

Como você pode ver, o grep é muito versátil. Além disso, você também pode usar expressões regulares no seu padrão:

```bash
$ ls /diretório | grep -E '.txt$'
```

Isso deve retornar todos os arquivos que terminam com “.txt” no diretório especificado!

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-09.json" aria-labelledby="arte-do-texto-09-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-09-exercise-title">Desafio · grep</h3>
  <p class="exercise-prompt">Use grep para mostrar as linhas de sistema.log que contêm ERRO, respeitando maiúsculas.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-09-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-09-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é grep ERRO sistema.log.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
