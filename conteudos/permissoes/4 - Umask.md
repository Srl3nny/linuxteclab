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