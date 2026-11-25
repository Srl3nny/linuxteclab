---
title: Comando uniq
youtube: null
pagetitle: uniq · identificar linhas repetidas
description: uniq · identificar linhas repetidas. Tutorial em português da trilha
  Texto e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

# **Comandos úteis para manipulação de texto**

Existem muitos comandos úteis para manipular texto no console. Um desses comandos é o `uniq`, que é uma ferramenta muito prática para eliminar linhas duplicadas em um arquivo.

## **Exemplo de uso**

Imagine que você tem um arquivo chamado `arq.txt` com várias linhas duplicadas:

```markdown
arq.txt
livro
livro
revista
revista
computador
```

Se você quiser remover essas linhas duplicadas, basta utilizar o comando `uniq`:

```bash
$ uniq arq.txt
livro
revista
computador
```

## **Contagem de ocorrências**

Se você quiser saber quantas vezes cada linha aparece no arquivo, basta adicionar a opção `-c` ao comando `uniq`:

```bash
$ uniq -c arq.txt
2 livro
2 revista
1 computador
```

## **Exibição de valores únicos**

Se você quiser exibir apenas as linhas únicas do arquivo, basta utilizar a opção `-u` ao comando `uniq`:

```bash
$ uniq -u arq.txt
computador
```

## **Exibição de valores duplicados**

Se você quiser exibir apenas as linhas duplicadas do arquivo, basta utilizar a opção `-d` ao comando `uniq`:

```bash
$ uniq -d arq.txt
livro
revista
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-13.json" aria-labelledby="arte-do-texto-13-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-13-exercise-title">Desafio · uniq</h3>
  <p class="exercise-prompt">As linhas de nomes.txt já estão ordenadas. Use uniq para mostrar cada sequência de linhas iguais apenas uma vez.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-13-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-13-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é uniq nomes.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
