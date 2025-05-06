**Criando rotas**

Já discutimos como visualizar as nossas tabelas de rotas com o comando `route`. Se você deseja adicionar ou remover rotas, pode fazê-lo manualmente.

**Adicionando uma nova rota**

Para adicionar uma nova rota, use o seguinte comando:
```bash
$ sudo route add -net 192.168.2.1/23 gw 10.11.12.3
```
**Removendo uma rota**

Para remover uma rota, use o seguinte comando:
```bash
$ sudo route del -net 192.168.2.1/23
```
**Adicionando um rota default**

Para adicionar uma rota padrão, aquela rota que se o destino do pacote não está na sua rede local, o sistema envia para o gateway padrão.
```bash
sudo route add default gw 192.168.1.1 eth0
```

Para remover essa mesma rota:
```bash
sudo route del default gw 192.168.1.1 eth0
```

**ALTERANDO ROTAS COM O COMMANDO IP**

Alternativamente, você também pode realizar essas alterações com o comando `ip`:
**Adicionando uma rota**

Para adicionar uma nova rota, use o seguinte comando:
```bash
$ ip route add 192.168.2.1/23 via 10.11.12.3
```
**Removendo uma rota**

Para remover uma rota, use um dos seguintes comandos:
```bash
$ ip route delete 192.168.2.1/23 via 10.11.12.3
```
ou
```bash
$ ip route delete 192.168.2.1/23
```

E para adicionar ou remover uma rota default com o comando IP:

```bash
sudo ip route add default via 192.168.1.1 dev eth0
sudo ip route del default via 192.168.1.1 dev eth0
```
