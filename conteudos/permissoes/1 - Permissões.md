---
title: Como ler permissões de arquivos
pagetitle: Como ler permissões de arquivos
description: Como ler permissões de arquivos. Tutorial em português da trilha Permissões
  do LinuxTecLab.
categories:
- Permissões
---

Já vimos que os arquivos possuem diferentes permissões ou modos de arquivo. Vamos explorar um exemplo:

```bash
$ ls -l Desktop/
drwxr-xr-x 2 bruno linuxteclab 4096 Dec 12 1:45 .
```

Uma permissão de arquivo se compõe de quatro partes. A primeira é o tipo de arquivo, representada pelo primeiro caractere da permissão. No nosso caso, estamos examinando um diretório, o tipo de arquivo é denotado pela letra “d”. Em geral, você verá um “-” para um arquivo regular.

As próximas três partes da permissão de arquivo são as permissões reais. As permissões são agrupadas em 3 bits cada. Os primeiros 3 bits representam as permissões do usuário, em seguida, as permissões do grupo e, por fim, as permissões de outros. Adicionei um pipe para facilitar a diferenciação.

```plain
d | rwx | r-x | r-x
```

Cada caractere representa uma permissão diferente:

- `r`: leitura
- `w`: escrita
- `x`: execução (ou seja, um programa executável)
- `-`: vazio ou sem permissão

No exemplo acima, vemos que o usuário “bruno” tem permissões de leitura, escrita e execução no arquivo. O grupo “linuxteclab” tem permissões de leitura e execução. Por fim, os outros usuários (ou seja, todos os demais) têm permissões de leitura e execução.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-01.json" aria-labelledby="permissoes-01-exercise-title">
  <h3 class="exercise-title" id="permissoes-01-exercise-title">Desafio · Permissões</h3>
  <p class="exercise-prompt">Em -rwxr-x---, quais são as três permissões do proprietário? Digite as três letras na ordem apresentada.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-01-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="permissoes-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é rwx.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
