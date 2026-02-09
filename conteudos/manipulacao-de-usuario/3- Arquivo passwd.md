Lembre-se de que os nomes de usuário não são, em realidade, identificadores de usuários. O sistema utiliza um IDENTIFIER DE USUÁRIO (UID) para identificar um usuário. Para descobrir quais usuários estão mapeados para que identificador, veja o arquivo `/etc/passwd`.

```bash
$ cat /etc/passwd```

Esse arquivo lista usuários e informações detalhadas sobre eles. Por exemplo, a primeira linha desse arquivo provavelmente se assemelha a essa:

```bash
root:x:0:0:root:/root:/bin/bash
```

Cada linha exibe informações de usuário para um usuário, sendo que o usuário `root` é comummente apresentado como a primeira linha. Existem muitos campos separados por dois pontos que fornecem informações adicionais sobre o usuário, veja que no caso são 7 campos, vamos analisá-los:

- 1: Nome de usuário.
- 2: Senha do usuário - embora a senha não esteja armazenada neste arquivo, está geralmente armazenada no arquivo `/etc/shadow`. Discutiremos mais sobre `/etc/shadow` na próxima aula, mas por agora, saiba que contém senhas de usuário criptografadas. Você pode ver muitos símbolos diferentes nesse campo, se vir um "x", isso significa que a senha está armazenada no arquivo `/etc/shadow`, um "*" indica que o usuário não tem acesso ao login e um campo em branco indica que o usuário não tem senha.

- 3: ID do usuário -  como você pode ver, o usuário `root` tem o ID de usuário 0.

- 4: ID do grupo.

- 5: Campo GECOS - este é utilizado para deixar comentários geralmente sobre o usuário ou conta, como nome real ou número de telefone, e é delimitado por vírgulas.

- 6: Diretório de home do usuário.
- 
- 7: Shell do usuário -  provavelmente verá muitos usuários utilizando o shell padrão `bash`.

Normalmente, na página de configuração de usuário, você espera ver apenas usuários humanos. No entanto, você notará que `/etc/passwd` contém outros usuários. Lembre-se de que os usuários são, na realidade, apenas no sistema para executar processos com permissões diferentes. Às vezes, queremos executar processos com permissões pré-definidas. Por exemplo, o usuário `daemon` é utilizado para processos daemon.

Além disso, é importante notar que você pode editar o arquivo `/etc/passwd` manualmente se quiser adicionar usuários e modificar informações com o tool `vipw`, no entanto, coisas como essas são melhor deixadas para tools, como `useradd` e `userdel`.