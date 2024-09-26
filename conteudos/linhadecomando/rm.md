# rm

Agora acho que temos muitos arquivos, vamos remover alguns arquivos. Para remover arquivos você pode usar o comando rm. O comando rm (remove) é usado para excluir arquivos e diretórios.


```bash
$ rm arquivo
```


Tome cuidado ao usar o rm, não existe lixeira onde você possa restaurar os arquivos removidos. Depois que eles desaparecerem, eles desaparecerão para sempre, então tome cuidado.

Felizmente, existem algumas medidas de segurança implementadas, então o cidadão comum não pode simplesmente remover um monte de arquivos importantes. Os arquivos protegidos contra gravação solicitarão confirmação antes de excluí-los. Se um diretório estiver protegido contra gravação, ele também não será facilmente removido.

Agora, se você não se importa com nada disso, você pode remover absolutamente vários arquivos.

```bash
$ rm -f arquivo1
```

A opção -f ou force diz ao rm para remover todos os arquivos, sejam eles protegidos contra gravação ou não, sem avisar o usuário (desde que você tenha as permissões apropriadas).

```bash
$ rm -i arquivo
```

Adicionar a opção -i como muitos dos outros comandos informará se você deseja realmente remover os arquivos ou diretórios.

```bash
$ rm -r diretório
```

Você não pode simplesmente rm um diretório por padrão, você precisará usar a opção -r (recursivo) para remover todos os arquivos e quaisquer subdiretórios que ele possa ter.

Você pode remover um diretório com o comando rmdir.

```bash
$ rmdir dir
```

Uma dica para não apagar dados indesejados com o rm, é sempre recomendado usar o caminho absoluto do diretório. Por exemplo caso queira excluir os dados dentro da pasta “/home/bruno/backup”, use:

```bash
$ rm -rf /home/bruno/backup/
```

Isso evita o erro de usar o comando rm pensando estar dentro da pasta backup quando na verdade estava dentro de outra pasta. Lembre-se o terminal não tem lixeira!
