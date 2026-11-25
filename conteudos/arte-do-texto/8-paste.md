---
title: Comando Paste
youtube: null
pagetitle: paste · combinar colunas
description: paste · combinar colunas. Tutorial em português da trilha Texto e filtros
  do LinuxTecLab.
categories:
- Texto e filtros
---

O comando paste no Linux é utilizado para combinar linhas de diferentes arquivos de forma horizontal, ou seja, ele "cola" o conteúdo das linhas correspondentes de dois ou mais arquivos lado a lado, separando-as por um delimitador (por padrão, o caractere de tabulação).

Vamos tomar como exemplo os dois arquivos a seguir:


Arq1.txt
```
1
2
3
```

Arq2.txt
```
a
b
c
```

Usando o paste.
```
$ paste arqu1.txt arq2.txt
```

Como resultado teria:

```
1   a
2   b
3   c
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-08.json" aria-labelledby="arte-do-texto-08-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-08-exercise-title">Desafio · paste</h3>
  <p class="exercise-prompt">Use paste para juntar horizontalmente as linhas correspondentes de nomes.txt e idades.txt, nessa ordem.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-08-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-08-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é paste nomes.txt idades.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
