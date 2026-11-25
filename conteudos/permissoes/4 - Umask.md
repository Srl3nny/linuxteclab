---
title: umask · definir permissões iniciais
pagetitle: umask · definir permissões iniciais
description: umask · definir permissões iniciais. Tutorial em português da trilha
  Permissões do LinuxTecLab.
categories:
- Permissões
---

Todo arquivo que é criado vem com um conjunto de permissões padrão. Se você alguma vez desejou mudar esse conjunto de permissões padrão, você pode fazer isso com o comando `umask`. Este comando utiliza o conjunto de 3 bits de permissões numérico que estamos acostumados a ver.

Ao criar um arquivo no Linux, ele herda um conjunto de permissões padrão. Esse comportamento é controlado pelo comando umask, que define quais permissões serão removidas dos valores padrão ao criar novos arquivos e diretórios.

O umask utiliza um número de 3 dígitos octais, onde cada dígito representa permissões para:

- Usuário (owner).
- Grupo (group).
- Outros (others).

Esses valores determinam quais permissões serão subtraídas do conjunto padrão. Por exemplo, ao usar:

```
$ umask 021
```

No exemplo acima, estamos afirmando que queremos que as permissões padrão de novos arquivos permitam que os usuários acessem tudo, mas para grupos queremos tirar a permissão de gravação e para outros queremos tirar a permissão de executável. O umask padrão na maioria das distribuições é 022, significando acesso de todos os usuários, mas nenhum acesso de gravação para o grupo e outros usuários. Quando você executa o comando umask, ele dará esse conjunto padrão de permissões em qualquer arquivo novo que você fizer. No entanto, se você quiser que ele persista, você terá que modificar seu arquivo de inicialização (.profile).

Para que o valor do umask seja aplicado sempre, adicione-o ao arquivo de inicialização do shell, como ~/.profile ou ~/.bashrc:

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-04.json" aria-labelledby="permissoes-04-exercise-title">
  <h3 class="exercise-title" id="permissoes-04-exercise-title">Desafio · Umask</h3>
  <p class="exercise-prompt">Defina a umask da sessão como 022.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-04-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="permissoes-04-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é umask 022.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
