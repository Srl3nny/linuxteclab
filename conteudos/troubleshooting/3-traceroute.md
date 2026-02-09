**Comando de rastreamento de rotas**

O comando `traceroute` é utilizado para entender como os pacotes de dados são roteados na internet. Ele funciona enviando pacotes com valores de TTL (Time To Live) que vão aumentando, começando com 1. Quando um roteador recebe um pacote, decrementa o valor de TTL em um e, portanto, o lança. O roteador então retorna um mensagem ICMP de "Tempo Excedido" para nós. Em seguida, o próximo pacote recebe um TTL de 2, o que o permite passar pelo primeiro roteador, mas quando chega ao segundo roteador, o TTL é 0 e retorna outra mensagem ICMP de "Tempo Excedido". O `traceroute` funciona desse jeito porque, ao enviar pacotes, está construindo uma lista de roteadores que os pacotes percorrem, como se estivesse anotando o caminho, até que finalmente chegue ao seu destino e receba uma mensagem ICMP de "echo reply".

Aqui está um exemplo de um `traceroute`:

```markdown
$ traceroute www.registro.br
traceroute to registro.br (200.160.2.3), 64 hops max
  1   192.168.15.1  7,621ms  3,619ms  3,815ms 
  2   *  *  * 
  3   152.255.150.160  7,908ms  7,396ms  8,768ms 
  4   152.255.163.235  10,094ms  10,237ms  10,328ms 
  5   187.100.60.99  9,810ms  10,677ms  9,661ms 
....
```

Cada linha representa um roteador ou máquina entre mim e o meu destino. Mostra o endereço IP, e as últimas três colunas correspondem ao tempo de round-trip da comunicação de um pacote para alcançar aquele roteador. Por padrão, enviaremos três pacotes ao longo da rota.

No exemplo acima, o `traceroute` foi executado para o endereço `registro.br`. Os resultados mostram os primeiros roteadores ou máquinas que os pacotes precisaram transitar para alcançar o destino.

Podemos usar o traceroute para:

* Diagnosticar onde ocorre uma perda de pacotes.
* Verificar onde está o maior tempo de latência.
* Mapear a rota de saída da sua rede.
* Testar a conectividade internacional (ver por onde os pacotes passam até chegar a outro país, por exemplo).