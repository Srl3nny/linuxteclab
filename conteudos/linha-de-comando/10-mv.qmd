# mv

Usado para mover arquivos e também renomeá-los. Bastante semelhante ao comando cp em termos de opções, você verá que na realidade muito comandos tem opção semelhantes.

Você pode renomear arquivos assim:

```bash
$ mv arquivoantigo arquivonovo
```

Ou você pode mover um arquivo para um diretório diferente:

```bash
$ mv arquivo /home/bruno/Documentos
```

E mova mais de um arquivo:

```bash
$ mv aruivo1 arquivo2 /tmp/nova
```

Renomear diretórios segue a mesma lógica.

```bash
$ mv dir1 dir2
```

Assim como o cp, se você mover um arquivo ou diretório, ele substituirá qualquer coisa no mesmo diretório. Portanto, você pode usar a opção ***\-i*** para avisar antes de substituir qualquer coisa.

```bash
$ mv -i dir1 dir2
```

Digamos que você queira mover um arquivo para substituir outro. Você também pode fazer um backup desse arquivo e ele apenas renomeará a versão antiga com ~.

```bash
$ mv -b dir1 dir2
```