**Servidor de Arquivos Local com Python**
================================================

O Python tem uma ferramenta muito útil para servir arquivos sob demanda através do protocolo HTTP. Isso é muito útil se você quiser criar uma compartilhamento de rede rápido que outras máquinas em sua rede possam acessar. Para fazê-lo, simplemente vá ao diretório que deseja compartilhar e execute:
```
$ sudo python3 -m http.server
[sudo] senha para bruno: 
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```
Portanto, obtenha a endereço IP da máquina que você executou este comando e, em outra máquina, acesse-o no navegador com: http://IP_ADDRESS:8000. Na sua própria máquina, você pode visualizar os arquivos disponíveis digitando: http://localhost:8000 no navegador.
