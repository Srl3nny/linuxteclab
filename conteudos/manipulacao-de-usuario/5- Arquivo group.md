---
title: Como ler o arquivo /etc/group
pagetitle: Como ler o arquivo /etc/group
description: Como ler o arquivo /etc/group. Tutorial em português da trilha Usuários
  e grupos do LinuxTecLab.
categories:
- Usuários e grupos
---

Além do arquivo `/etc/password`, outro elemento importante no gerenciamento de usuários é o arquivo `/etc/group`. Esse arquivo permite criar grupos com permissões diferentes.

Veremos um exemplo do conteúdo desse arquivo com o comando `cat`:

```bash
$ cat /etc/group
root:*:0:bruno
```

As colunas do arquivo `/etc/group` são semelhantes às do `/etc/password`, com as seguintes características:

- 1: Nome do Grupo - Nome do grupo criado.

- 2: Senha do Grupo - Embora não seja necessário definir uma senha para o grupo, é comum usar privilégios elevados, como o `sudo`, para gerenciar grupos. O valor padrão é “\*”.

- 3: ID do Grupo (GID) - Identificador único do grupo.

- 4: Lista de usuários - Você pode especificar manualmente usuários que deseja incluir em um grupo específico.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/manipulacao-de-usuario-05.json" aria-labelledby="manipulacao-de-usuario-05-exercise-title">
  <h3 class="exercise-title" id="manipulacao-de-usuario-05-exercise-title">Desafio · Arquivo group</h3>
  <p class="exercise-prompt">Em laboratorio:x:2000:aluno, qual é o GID do grupo? Digite apenas o número.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="manipulacao-de-usuario-05-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="manipulacao-de-usuario-05-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é 2000.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Usuários e grupos](../../temas.qmd#manipulacao-de-usuario)
