---
title: Sticky bit em diretórios compartilhados
pagetitle: Sticky bit em diretórios compartilhados
description: Sticky bit em diretórios compartilhados. Tutorial em português da trilha
  Permissões do LinuxTecLab.
categories:
- Permissões
---

# **O bit de permissão stick: um recurso útil para diretórios compartilhados**

Um último bit de permissão especial: o bit stick. Quando um bit stick é configurado em um arquivo ou diretório, isso significa que apenas o proprietário do arquivo ou o usuário raiz podem excluí-lo ou modificá-lo. Isso é muito útil em diretórios compartilhados. Veja o exemplo abaixo:

```markdown
$ ls -ld /tmp
drwxrwxrwxt 6 root root 4096 Dec 15 11:45 /tmp
```

Nota-se um bit de permissão especial ao final, o caractere t. Isso significa que qualquer usuário pode adicionar arquivos, criar arquivos ou modificar arquivos no diretório /tmp, mas apenas o usuário raiz pode excluir o diretório /tmp.

# **Modificar o bit stick**

Para modificar o bit stick, use o comando `chmod` com a opção `-t` e o parâmetro `+`:

```markdown
$ sudo chmod +t mydir
$ sudo chmod 1755 mydir
```

A representação numérica para o bit stick é `1`.

```
Nota que o bit stick é frequentemente utilizado em diretórios temporários (como `/tmp`), pois permite que vários usuários criem e lerem arquivos nele, mas impede que um usuário exclua o diretório todo da forma que deseja.
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-08.json" aria-labelledby="permissoes-08-exercise-title">
  <h3 class="exercise-title" id="permissoes-08-exercise-title">Desafio · Sticky Bit</h3>
  <p class="exercise-prompt">Adicione o sticky bit ao diretório compartilhado, preservando os demais bits. Use chmod.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-08-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="permissoes-08-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é chmod +t compartilhado.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
