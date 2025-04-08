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