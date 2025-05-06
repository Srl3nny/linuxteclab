**Gerenciando a Rede com NetworkManager**

Claro que, se deseja que o networking do seu sistema esteja sempre online, há ferramenta pronta para isso. A maioria das distribuições utiliza o daemon NetworkManager para configurar as redes automaticamente.Você pode notar o NetworkManager na forma de um applet em sua barra de tarefa do desktop, se estiver usando uma interface gráfica. Como você pode ver, ele gerencia a informação de hardware e conexões da rede. Por exemplo, ao iniciar, o NetworkManager irá coletar informações de hardware de rede, procurar conexões wireless, wired, etc. e as activará.

Além disso, há ferramentas de linha de comando para interagir com o NetworkManager:
### nm-tool

A ferramenta nm-tool reporta o estado do NetworkManager e seus dispositivos.

Exemplo:
```
pete@icebox:/$ nm-tool
Ferramenta NetworkManager
Estado: conectado (global)
- Dispositivo: eth0  [Conexão Wired 1] -------------------------------------------
  Tipo:              Wired
  Driver:            pcnet32
  Estado:             conectado
  Padrão:           sim
  Endereço MAC:        12:3D:45:56:7D:CC
  Capacidades:
    Detecção de Carregamento:  sim
  Propriedades Wired
    Carregamento:         sim
  Configurações de IPv4:
    Endereço:         192.168.22.1
    Prefixo:          24 (255.255.255.0)
    Gateway:         192.168.22.2
    DNS:             192.168.22.2
```
### nmcli

A comando nmcli permite controlar e modificar o NetworkManager, veja a página de manual para obter mais informações.

(Lembre-se de que o exemplo `nm-tool` é um arquivo de texto chamado `arq.txt`, por exemplo)