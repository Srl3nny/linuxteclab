**Análise de Pacotes com tcpdump**
=============================

O assunto de análise de pacotes poderia preencher um curso inteiro, e há muitos livros escritos apenas sobre isso. No entanto, hoje vamos apenas aprender os fundamentos. Existem dois analisadores de pacotes extremamente populares: o Wireshark e o tcpdump. Essas ferramentas escaneiam suas interfaces de rede, capturam a atividade de pacotes, analisam os pacotes e mostram o resultado para que possamos vê-lo. Eles permitem que entremos no detallhe da análise de rede e entremos nos assuntos de baixo nível.

Neste tutorial, vamos usar o tcpdump, pois tem uma interface mais simples. No entanto, se você decidir adicionar a análise de pacotes ao seu conjunto de ferramentas, eu recomendaria que você investigue o Wireshark.

**Instalar o Tcpdump**
---------------------

$ sudo apt install tcpdump

**Capturar dados de pacotes em uma interface**
-----------------------------------------

```
$ sudo tcpdump -i wlp2s0

```

Aqui, você pode ver que a saída é muito rica em informações. Você pode notar que há muita atividade de rede ocorrendo no fundo.

**Entender a saída**
-----------------

Aqui, você pode ver a saída do tcpdump:

```
$ sudo tcpdump -i wlp2s0
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on wlp2s0, link-type EN10MB (Ethernet), snapshot length 262144 bytes
16:24:30.913206 IP relay-75a37270.net.anydesk.com.https > angus.55880: Flags [.], ack 2435903682, win 501, options [nop,nop,TS val 1573957440 ecr 1295693806], length 0
16:24:30.913238 IP angus.55880 > relay-75a37270.net.anydesk.com.https: Flags [.], ack 1, win 481, options [nop,nop,TS val 1295704133 ecr 1573947946], length 0
```
Temos muitas informações, podemos aprender muito sobre o funcionamento da rede estudando a saída do tcpdump: 

* 16:24:30.913206: Horário do pacote capturado.
* IP: Protocolo de rede — pacote IP.
* relay-75a37270.net.anydesk.com.https: Nome do host de origem e porta (porta HTTPS = 443).
* >: Indica direção do tráfego (origem → destino).
* angus.55880: Host de destino com porta aleatória (55880) — uma porta efêmera usada pelo cliente.
* Flags [.]: Flag TCP ACK (confirmação).
* ack 2435903682: Número de reconhecimento (ACK), indicando o próximo byte esperado.
* win 501: Tamanho da janela TCP (quantos bytes o receptor está disposto a receber).
* options [nop,nop,TS val 1573957440 ecr 1295693806]: Opções TCP, aqui incluindo o timestamp (TS) e o valor ecoado (ecr), usados para calcular RTT.
* length 0: O pacote não contém payload (somente cabeçalho TCP).

**Escrever a saída do tcpdump para um arquivo**
--------------------------------------------

```
$ sudo tcpdump -w /some/file
```

 Algumas últimas palavras: apenas raspamos a superfície do assunto de análise de pacotes. Há muito mais que você pode explorar e não tocamos sequer nos assuntos mais profundos com Hex e ASCII output. 
