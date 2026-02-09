**Como configurar um cliente NFS no Linux**
================================================================

O NFS (Network File System) continua sendo uma das formas mais comuns de compartilhamento de arquivos entre sistemas Linux em uma rede. Ele permite que um servidor disponibilize diretórios para que clientes possam acessá-los como se fossem locais.

Nesta seção, focaremos na configuração do cliente NFS, assumindo que o servidor NFS já está corretamente configurado na rede.

**Instale o pacote necessário**
------------------------------
```bash
sudo apt update
sudo apt install nfs-common
```

**Monte o compartilhamento NFS manualmente**
-----------------------------

Para montar um diretório exportado por um servidor NFS:

```bash
sudo mount -t nfs 192.168.1.100:/export/dados /mnt/dados
```
Certifique-se de que o diretório /mnt/dados exista previamente. Crie com sudo mkdir -p /mnt/dados se necessário.

**Automontagem**
----------------

Se você usa o servidor NFS com frequência e deseja mantê-lo montado permanentemente, você pode pensar em editar o arquivo `/etc/fstab`. 

```bash
192.168.1.100:/export/dados /mnt/dados nfs defaults,_netdev 0 0
```