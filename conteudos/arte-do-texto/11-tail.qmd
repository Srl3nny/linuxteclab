# Comandos úteis para visualizar arquivos: tail e head

O comando `tail` funciona de forma semelhante ao comando `head`. Mas ele permite visualizar as últimas 10 linhas de um arquivo por padrão.

Exemplo:

```bash
$ tail /var/log/syslog
```

Como no `head` o `tail`, você pode alterar o número de linhas que deseja visualizar.

Exemplo:

```bash
$ tail -n 15 /var/log/syslog
```

Uma opção interessante é a flag `-f` (follow). Ela permite seguir o arquivo à medida que ele cresce, bom para monitorar um serviço em tempo real.

Exemplo:

```bash
$ tail -f /var/log/syslog
```

Enquanto você interage com seu sistema, o arquivo `syslog` estará constantemente mudando. Com `tail -f`, você pode acompanhar tudo o que é adicionado a esse arquivo.
