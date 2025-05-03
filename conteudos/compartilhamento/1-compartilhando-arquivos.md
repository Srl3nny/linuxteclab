**Transferencia de dados entre máquinas na rede**
==============================================

Quando você trabalha em um ambiente comercial, é comum compartilhar redes com outros computadores. Se você precisa transferir dados de uma máquina para 
outra, pode ser mais prático usar um drive USB e copiar manualmente os arquivos. No entanto, se você trabalha com máquinas na mesma rede, a forma mais 
comum de transferir dados é por meio da compartilhamento de arquivos de rede.

**Compartilhamento de arquivos**
-----------------------------

Vamos explorar alguns métodos simples para copiar dados inclusive em máquinas diferentes na sua rede. Vamos discutir algumas copias de arquivos fáceis, e em
seguida, vamos falar sobre montar diretórios inteiros em sua máquina como um dispositivo de armazenamento separado.

**O comando scp (Secure Copy)**
-----------------------------

O comando scp (secure copy) é uma ferramenta simples e segura para compartilhar arquivos entre máquinas na mesma rede. O scp funciona da mesma maneira que
 o comando cp, mas permite copiar arquivos de uma máquina para outra, todos usando a autenticação e segurança do protocolo ssh.

**Exemplos de uso do comando scp**
---------------------------------

Copiar um arquivo da máquina local para uma máquina remota:
```bash
$ scp arq1.txt bruno@192.168.15.100:/remote/directory
```
Copiar um arquivo da máquina remota para a máquina local:
```bash
$ scp bruno@192.168.15.100:/remote/directory/arq1.txt /home/bruno
```
Copiar um diretório da máquina local para uma máquina remota:
```bash
$ scp -r /home/bruno bruno@192.168.15.100:/remote/directory
```
