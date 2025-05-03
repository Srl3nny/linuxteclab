**Portas conhecidas Utilizadas**
 Nós vamos falar sobre transmissão de dados através de portas no nosso computador, vamos explorar algumas portas conhecidas utilizadas. Você pode obter uma lista de portas conhecidas procurando o arquivo `/etc/services`:

```mkd
ftp             21/tcp
ssh             22/tcp
smtp            25/tcp 
domain          53/tcp  # DNS
http            80/tcp
https           443/tcp
... ...
```

A primeira coluna apresenta o nome do serviço, seguida do número de porta e do protocolo de camada de transporte utilizado.

**Netstat**
 Uma ferramenta extremamente útil para obter informações detalhadas sobre sua rede é o netstat. O netstat exibe várias informações relacionadas à rede, como conexões de rede, tabelas de roteamento, informações sobre interfaces de rede e mais, é a "ferramenta multitasking". Vamos nos concentrar em uma das características mais importantes do netstat que é o status das conexões de rede. Antes de ver um exemplo, vamos discutir sobre sockets e portas inicialmente. Um socket é uma interface que permite que programas enviem e recebam dados, enquanto uma porta é usada para identificar qual aplicação deve enviar ou receber dados. A combinação de endereço IP e porta é conhecida como endereço do socket. Cada conexão entre um host e destino requere um socket único. Por exemplo, o HTTP é um serviço que roda na porta 80, no entanto, podemos ter muitas conexões HTTP e para manter cada conexão, um socket é criado por conexão.

```
p$ netstat -at
Conexões Internet Ativas (servidores e estabelecidas)
Proto Recv-Q Send-Q Endereço Local          Endereço Remoto         Estado      
tcp        0      0 localhost:ipp           0.0.0.0:*               OUÇA      
tcp        0      0 0.0.0.0:7070            0.0.0.0:*               OUÇA      
tcp        0      0 localhost:17600         0.0.0.0:*               OUÇA      
tcp        0      0 localhost:17603         0.0.0.0:*               OUÇA      
tcp        0      0 0.0.0.0:db-lsp          0.0.0.0:*               OUÇA      
tcp        0      0 0.0.0.0:ssh             0.0.0.0:*               OUÇA      
tcp        0      0 localhost:domain        0.0.0.0:*               OUÇA      
tcp        0      0 angus:45944             gru06s65-in-f8.1e:https TIME_WAIT  
tcp        0      0 angus:51206             rio01s25-in-f14.1:https TIME_WAIT  
tcp        0      0 angus:47016             93.243.107.34.bc.:https ESTABELECIDA
tcp        0      0 angus:43148             162.125.5.19:https      ESTABELECIDA
tcp        0      0 angus:51760             whatsapp-cdn-shv-:https ESTABELECIDA
tcp        0      0 angus:50460             162.125.21.3:https      ESTABELECIDA
tcp        0      0 angus:40398             13.89.179.10:https      ESTABELECIDA
tcp        0      0 angus:55880             relay-75a37270.ne:https ESTABELECIDA
tcp        0      0 angus:40400             13.89.179.10:https      ESTABELECIDA
tcp        0      0 angus:53890             server-3-163-68-4:https TIME_WAIT  
tcp        0      0 angus:35174             162.125.21.2:https      ESTABELECIDA
tcp        0      0 angus:39130             server-3-164-6-23:https ESTABELECIDA
tcp        0      0 angus:35916             pngrua-aa-in-f10.:https TIME_WAIT  
tcp        0      0 angus:42568             144.cl9.com.br:https    ESTABELECIDA
tcp        0      0 angus:41650             162.125.6.20:https      ESTABELECIDA
tcp        0      0 angus:39620             162.159.140.229:https   ESTABELECIDA
tcp        0      0 angus:42046             ecentry.io:https        ESTABELECIDA
tcp6       0      0 ip6-localhost:ipp       [::]:*                  OUÇA      
tcp6       0      0 [::]:db-lsp             [::]:*                  OUÇA      
tcp6       0      0 [::]:ssh                [::]:*                  OUÇA  
```

O comando `netstat -a` lista todas as conexões e portas em escuta., o flag `-t` mostra apenas conexões TCP.

As colunas são apresentadas da esquerda para a direita:

* Proto: Protocolo utilizado, TCP ou UDP.
* Recv-Q: Quantidade de dados recebidos e ainda não lidos pela aplicação local. Valor alto pode indicar lentidão na leitura.
* Send-Q: Quantidade de dados enviados e ainda não reconhecidos pelo host remoto. Valor alto pode indicar congestionamento.
* Endereço Local: IP e porta local da conexão. Ex: 192.168.0.10:22 ou 0.0.0.0:80 (escutando em todas as interfaces).
* Endereço Remoto: Host conectado remotamente.
* Estado: Estado da conexão TCP. Ex: LISTEN, ESTABLISHED, TIME_WAIT.

Consulte a página de manual para obter uma lista de estados de socket, mas aqui estão alguns exemplos:

* LISTENING:O servidor está aguardando conexões (porta aberta).
* SYN_SENT: O socket está tentando estabelecer uma conexão ativamente.
* ESTABLISHED: O socket tem uma conexão estabelecida.
* CLOSE_WAIT: O host remoto fechou e estamos aguardando o socket fechar.
* TIME_WAIT: O socket está esperando após o fechamento para lidar com pacotes ainda presentes na rede.