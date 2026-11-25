---
title: Gerenciamento de contas de usuários
pagetitle: Gerenciamento de contas de usuários
description: Gerenciamento de contas de usuários. Tutorial em português da trilha
  Usuários e grupos do LinuxTecLab.
categories:
- Usuários e grupos
---

Muitas infraestruturas empresariais utilizam sistemas de gerenciamento para gerenciar usuários, contas e senhas. No entanto, em um computador local, há comandos úteis para gerenciar usuários.

# Adicionar Usuários

Pode ser utilizado o comando `adduser` ou `useradd`. O comando `adduser` apresenta recursos mais úteis, como criar um diretório home e outros. Existem arquivos de configuração para adicionar novos usuários e podem ser personalizados de acordo com as necessidades do usuário padrão.

Exemplo:

```bash
$ sudo useradd bob
```

Você verá que o comando acima cria uma entrada no arquivo `/etc/passwd` para bob, configura grupos padrão e adiciona uma entrada no arquivo `/etc/shadow`.

# Remover Usuários

Para remover um usuário, você pode usar o comando `userdel`.

Exemplo:

```bash
$ sudo userdel bob
```

Este comando basicamente desfaz as alterações feitas pelo comando `useradd`.

# Alterar Senhas

$ `passwd bob`

Isso permitirá que você altere a senha do próprio usuário ou de outro usuário (se você for root).

**Nota:** É recomendável usar o comando `adduser` em vez de `useradd`, pois o primeiro é mais fácil de usar e apresenta recursos mais avançados.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/manipulacao-de-usuario-06.json" aria-labelledby="manipulacao-de-usuario-06-exercise-title">
  <h3 class="exercise-title" id="manipulacao-de-usuario-06-exercise-title">Desafio · Gerenciamento de usuários</h3>
  <p class="exercise-prompt">No cenário fictício, use sudo e useradd para criar a conta aluno2 com diretório pessoal.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="manipulacao-de-usuario-06-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="manipulacao-de-usuario-06-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sudo useradd -m aluno2.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Usuários e grupos](../../temas.qmd#manipulacao-de-usuario)
