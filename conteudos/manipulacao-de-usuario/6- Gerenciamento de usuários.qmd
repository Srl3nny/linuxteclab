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