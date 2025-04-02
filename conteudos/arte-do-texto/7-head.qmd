# Usando o comando head

Vamos imaginar que temos um arquivo muito extenso; na verdade, temos muitos arquivos longos para escolher.

Experimente executar o comando

```bash
$ cat /var/log/syslog
```

Você verá várias páginas de texto. Mas e se eu quiser ver apenas as primeiras linhas desse arquivo? Podemos fazer isso com o comando `head`.

Por padrão, o comando `head` mostra as primeiras 10 linhas de um arquivo. Portanto, ao executar:

    $ head /var/log/syslog

Você verá essas linhas iniciais. Se desejar modificar a contagem de linhas para um número específico, como por exemplo, as primeiras 15 linhas, você pode usar a opção `-n`.  
O comando ficaria assim:

    $ head -n 15 /var/log/syslog

Aqui, a flag `-n` indica o número de linhas que você deseja visualizar.