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

[Mais tutoriais de Usuários e grupos](../../temas.qmd#manipulacao-de-usuario)
