---
title: chown · alterar o proprietário
pagetitle: chown · alterar o proprietário
description: chown · alterar o proprietário. Tutorial em português da trilha Permissões
  do LinuxTecLab.
categories:
- Permissões
---

Além de alterar os permissões de um arquivo, você também pode alterar a propriedade do usuário e do grupo associados ao arquivo.  

**Alterar proprietário do usuário**

```
sudo chown linuxteclab exemplos.txt
```

Este comando definirá o usuário dono do arquivo `exemplos.txt` como `linuxteclab`.

**Alterar grupo do arquivo**

```
sudo chgrp TI arq.txt
```

Este comando definirá o grupo do arquivo `arq.txt` como `TI`.

**Alterar proprietário do usuário e grupo ao mesmo tempo**

Se você usar o carácter de dois pontos após o usuário, poderá alterar usuário e grupo ao mesmo tempo.

```
sudo chown linuxteclab:TI exemplos.txt
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-03.json" aria-labelledby="permissoes-03-exercise-title">
  <h3 class="exercise-title" id="permissoes-03-exercise-title">Desafio · Alterando proprietário</h3>
  <p class="exercise-prompt">Use sudo e chown para definir aluno como proprietário e laboratorio como grupo de dados.txt.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-03-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="permissoes-03-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sudo chown aluno:laboratorio dados.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
