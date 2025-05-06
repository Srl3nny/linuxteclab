**Configuração de rede com DHCP**
===============================

 Já discutimos sobre DHCP e em geral, você nunca precisará configurar manualmente seus endereços IP, máscaras de subrede, etc. Em vez disso, você utilizará DHCP! O `dhclient` é executado ao boot e obtém uma lista de interfaces de rede a partir do arquivo `dhclient.conf`. Para cada interface listada, ele tenta configurar a interface utilizando o protocolo DHCP.

O arquivo `dhclient.leases` é usado pelo `dhclient` para manter um registro de leases across system reboots. Após ler o arquivo `dhclient.conf`, o arquivo `dhclient.leases` é lido para informar ao `dhclient` quais leases foram atribuídas anteriormente.

Para obter um endereço IP novo:

```
$ sudo dhclient example.txt
```

**Nota:** É importante lembrar que, ao executar o comando `dhclient`, você deve substituir `example.txt` pelo arquivo de configuração de rede adequado.