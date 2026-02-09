O arquivo `/etc/shadow` tem como objetivo armazenar informações sobre autenticação de usuários. Para ler este arquivo, é necessário ter permissões de leitura como superusuário.

Exemplo:

```
$ sudo cat /etc/shadow
root:MyEPTEa$6Nonsense:15000:0:99999:7::: 
```

Observe que o conteúdo é muito semelhante ao do arquivo `/etc/passwd`, mas o campo de senha apresenta uma senha criptografada. Os campos são separados por coluns, como segue:

- 1: Nome de usuário.
- 2: Senha criptografada.
- 3: Data da última alteração da senha - (exprimida em dias desde 1º de janeiro de 1970). Se for apresentado um zero, isso significa que o usuário deve alterar sua senha ao logging em seguida.
- 4: Período mínimo para alteração da senha - (em dias) - o período que um usuário precisará esperar antes de poder alterar sua senha novamente.
- 5: Período máximo para alteração da senha - (em dias) - o período máximo antes que um usuário tenha que alterar sua senha.
- 6: Período de aviso para senha (em dias) - o período antes que uma senha expira.
- 7: Período de inatividade para senha (em dias) - o período após a senha expirar para permitir que o usuário logging com a senha.
- 8: Data de expiração do conta - (data em que o usuário não poderá logar)
- 9: Campo reservado para uso futuro

É importante notar que, em muitas das distribuições de hoje, a autenticação de usuários não depende apenas do arquivo `/etc/shadow`, existem outros mecanismos em uso, como as Módulas de Autenticação Pluggable (PAM), que substituem a autenticação.
