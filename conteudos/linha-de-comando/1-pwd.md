---
title: pwd
youtube: https://youtu.be/FgfwdUl3i-s?si=IK4moEVv_NtbPE-O
pagetitle: pwd · descobrir o diretório atual
description: pwd · descobrir o diretório atual. Tutorial em português da trilha Linha
  de comando do LinuxTecLab.
categories:
- Linha de comando
---

Tudo no Linux é um arquivo. À medida que você se aprofunda no Linux, você entenderá isso, mas por enquanto mantenha isso em mente. Cada arquivo é organizado em uma árvore de diretórios hierárquica. O primeiro diretório no sistema de arquivos é apropriadamente denominado diretório raiz ou root, seria semelhante a unidade C: no Windows. O diretório raiz possui muitas pastas e arquivos nos quais você pode armazenar mais pastas e arquivos, etc. Aqui está um exemplo de diretórios:

```bash
/
/etc/fstab
/home/bruno
/home/bruno/arquivo.txt
/tmp
```

A localização desses arquivos e diretórios é chamada de caminho ou path. Observe no exemplo acima que tenho um arquivo.txt que fica no caminho /home/bruno, esse caminho também é conhecido como diretório home do usuário.

A navegação no sistema de arquivos, assim como na vida real, é útil se você souber onde está e para onde está indo. Para ver onde você está, você pode usar o comando pwd, este comando significa “print working directory” e apenas mostra em qual diretório você está, observe que o caminho vem do diretório raiz.

```bash
$ pwd
```


---


## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/pwd.json" aria-labelledby="pwd-exercise-title">
  <h3 class="exercise-title" id="pwd-exercise-title">Missão 01 · Onde estou?</h3>
  <p class="exercise-prompt">Digite o comando que mostra o caminho completo do diretório atual.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="pwd-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="pwd-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. A resposta desta missão é pwd.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
