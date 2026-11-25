---
title: Como funciona o bit setgid
pagetitle: Como funciona o bit setgid
description: Como funciona o bit setgid. Tutorial em português da trilha Permissões
  do LinuxTecLab.
categories:
- Permissões
---

Similarmente ao bit de permissão “Set User ID”, há um bit de permissão “Set Group ID” (SGID). Este bit permite que um programa execute como se fosse um membro do grupo correspondente.  
Vamos verificar um exemplo:

```
$ ls -l /usr/bin/wall
-rwxr-sr-x 1 root tty 19024 Dec 14 11:45 /usr/bin/wall
```

Agora podemos ver que o bit de permissão está configurado no conjunto de permissões do grupo.

Modificando o SGID

```
$ sudo chmod g+s exemplo.txt
$ sudo chmod 2555 exemplo.txt
```

A representação numérica para SGID é 2.

&nbsp;

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-06.json" aria-labelledby="permissoes-06-exercise-title">
  <h3 class="exercise-title" id="permissoes-06-exercise-title">Desafio · Setgid</h3>
  <p class="exercise-prompt">Adicione o bit setgid ao diretório equipe preservando as outras permissões. Use chmod.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-06-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="permissoes-06-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é chmod g+s equipe.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
