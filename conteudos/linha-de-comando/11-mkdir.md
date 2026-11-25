---
title: mkdir
youtube: https://youtu.be/7Zl1yXe-MB8?si=z3e2hWzT506BXN_l
pagetitle: mkdir · criar diretórios
description: mkdir · criar diretórios. Tutorial em português da trilha Linha de comando
  do LinuxTecLab.
categories:
- Linha de comando
---

Precisaremos de alguns diretórios para armazenar todos esses arquivos nos quais estamos trabalhando. O comando mkdir (Make Directory) é útil para isso, ele criará um diretório caso ele ainda não exista. Você pode até criar vários diretórios ao mesmo tempo.

```bash
$ mkdir livros textos
```

Você também pode criar vários subdiretórios ao mesmo tempo com a opção **\-p.**

```bash
$ mkdir -p livros/linux/favoritos
```

Perceba como o conhecimento do que já vimos irá se acumulando. podemos ver o uso de caminho relativo na criação de diretórios.


---

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/mkdir.json" aria-labelledby="mkdir-exercise-title">
  <h3 class="exercise-title" id="mkdir-exercise-title">Missão 11 · Crie uma árvore de pastas</h3>
  <p class="exercise-prompt">A pasta projetos ainda não existe. Digite um único comando mkdir para criar projetos/linux/exercicios, incluindo as pastas intermediárias.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="mkdir-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="mkdir-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é mkdir -p projetos/linux/exercicios.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
