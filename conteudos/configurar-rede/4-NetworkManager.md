**Gerenciando a Rede com NetworkManager**

Claro que, se deseja que o networking do seu sistema esteja sempre online, há ferramenta pronta para isso. A maioria das distribuições utiliza o daemon NetworkManager para configurar as redes automaticamente.Você pode notar o NetworkManager na forma de um applet em sua barra de tarefa do desktop, se estiver usando uma interface gráfica. Como você pode ver, ele gerencia a informação de hardware e conexões da rede. Por exemplo, ao iniciar, o NetworkManager irá coletar informações de hardware de rede, procurar conexões wireless, cabeadas, etc. e as activará.

Além disso, há ferramentas de linha de comando para interagir com o NetworkManager:

### nmcli

ferramenta de linha de comando para interagir com o NetworkManager.

Por exemplo, para listar conexões.
```bash
nmcli connection show
```
Para ativar uma interface.
```bash
nmcli radio wifi on
```

### nmtui

Interface de terminal baseada em texto (menu interativo).

### NetworkManager e o systemd

O NetworkManager roda como serviço:

```bash
sudo systemctl status NetworkManager
```