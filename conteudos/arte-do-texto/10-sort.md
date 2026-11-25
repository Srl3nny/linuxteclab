---
title: Comando sort
youtube: null
pagetitle: sort · ordenar linhas
description: sort · ordenar linhas. Tutorial em português da trilha Texto e filtros
  do LinuxTecLab.
categories:
- Texto e filtros
---

# Ordenação de Textos com o Comando `sort`

O comando `sort` é uma ferramenta útil para organizar linhas de texto de acordo com um critério predeterminado. Vamos ver exemplos de como usá-lo para ordenar linhas de um arquivo de texto.

### Exemplo 1: Ordenação Alfabética

Continuemos com o arquivo `exemplo.txt`, que contém os seguintes termos:
```text
arq.txt
 rato
 cachorro
 gato
 elefante
 pato
```
Quando executamos o comando `sort` sobre esse arquivo, obtemos o seguinte resultado:
```text
$ sort arq.txt
 cachorro
 elefante
 gato
 pato
 rato
```
A ordenação é feita alfabeticamente, portanto, os termos começam a aparecer na ordem correta.

### Exemplo 2: Ordenação em Ordem inversa

Mais um exemplo interessante é a ordenação em ordem inversa. Para isso, podemos usar a opção `-r` do comando `sort`. Vou mostrar como:
```text
$ sort -r arq.txt
 rato
 pato
 gato
 elefante
 cachorro
```
Agora, a ordenação é feita em ordem inversa, portanto, os termos aparecem na ordem oposta.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-10.json" aria-labelledby="arte-do-texto-10-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-10-exercise-title">Desafio · sort</h3>
  <p class="exercise-prompt">Use sort para ordenar numericamente as linhas de numeros.txt em ordem crescente.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-10-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-10-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sort -n numeros.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
