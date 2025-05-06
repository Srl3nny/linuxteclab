**Como o ARP cache funciona**

Lembre-se de quando procuramos uma endereço MAC com ARP? Primeiramente, o sistema verifica o cache ARP localmente armazenado no nosso sistema. Você pode visualizar esse cache execute o comando `arp`:

```
pete@icebox:~$ arp
Endereço            Tipo HW   Endereço HW   Flags   Máscara        Interface
192.168.22.1       ether   00:12:24:fc:12:cc   C          eth0
192.168.22.254     ether   00:12:45:f2:84:64   C          eth0
```

O cache ARP está vazio quando a máquina é inicializada, e é populado à medida que os pacotes são enviados para outros servidores. Se enviamos um pacote para umdestino que não está no cache ARP, o que acontece é o seguinte:

O host fonte cria o quadro Ethernet com um pacote de solicitação ARP
O host fonte broadcasta esse quadro para toda a rede
Se algum dos hosts na rede sabe o endereço MAC correto, ele enviará um pacote de resposta e quadro contendo o endereço MAC
O host fonte adiciona a correspondência IP-MAC ao cache ARP e, em seguida, prossegue com a entrega do pacote

Você também pode visualizar seu cache ARP com o comando `ip neighbor show`:

```
$ ip neighbour show
```

Notícias adicionais

**Arp Cache** é uma área de armazenamento na memória RAM que armazena as correspondências entre os endereços IP e as respectivas mídias [1] (Mac Address). Essa cache é populada automaticamente quando um pacote é enviado para um host que não está presente na cache.