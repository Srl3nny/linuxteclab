**Compreendendo o Ping**
=====================================================

O ping é uma das ferramentas de rede mais simples e poderosas, usada para testar se um pacote pode alcançar um host. Funciona enviando solicitações de eco ICMP (Type 8) para o host de destino e aguardando uma resposta ICMP (Type 0). O ping é considerado bem-sucedido quando o host envia o pacote de solicitação e recebe uma resposta do alvo.

Vamos analisar um exemplo: 

```markdown
P$ ping -c 3 www.registro.br
PING registro.br (200.160.2.3) 56(84) bytes of data.
64 bytes from registro.br (200.160.2.3): icmp_seq=1 ttl=249 time=10.5 ms
64 bytes from registro.br (200.160.2.3): icmp_seq=2 ttl=249 time=16.7 ms
64 bytes from registro.br (200.160.2.3): icmp_seq=3 ttl=249 time=13.1 ms

--- registro.br ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 10.521/13.453/16.734/2.548 ms
```
Nesse exemplo, estamos usando o ping para verificar se podemos acessar o www.registro.br. O flag `-c` (contagem) é usado para parar de enviar pacotes de solicitação de eco após atingir o número especificado.

A primeira parte indica que estamos enviando pacotes de 64 bytes para o endereço 200.260.2.3 (registro.br), e o resto mostra os detalhes do viagem. Por padrão,ele envia um pacote por segundo.

**campo icmp_seq**
----------------

O campo icmp_seq é usado para exibir a sequência de números de pacotes enviados, portanto, nesse caso, enviei 3 pacotes e podemos ver que 3 pacotes voltaram. Se você faz um ping e recebe sequência de números ausentes, isso significa que há um problema de conectividade e não todos os seus pacotes estão passando pela rede. Se a sequência de número for desordenada, provavelmente sua conexão está muito lenta, pois os pacotes estão ultrapassando o padrão de um segundo.

**campo ttl**
-------------

O campo TTL (Time To Live) é usado como um contador de hops, ao fazer hops, o contador é decrementado por um e, quando o contador atinge 0, o pacote morre. Isso é feito para dar ao pacote uma vida útil, não desejamos que nossos pacotes viajem por toda a eternidade.

**campo time**
-------------

O tempo de volta é calculado do momento em que você envia o pacote de solicitação de eco até que receba a resposta de eco.

Espero que isso tenha ajudado a iluminar o funcionamento do ping!