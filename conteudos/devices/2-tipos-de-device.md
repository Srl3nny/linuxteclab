**Gerenciamento de Dispositivos**
======================================================

Antes de discutirmos sobre como os dispositivos são gerenciados, vamos dar uma olhada em alguns dispositivos. Aqui está um exemplo usando o comando `ls -l /dev`:
```bash
$ ls -l /dev
brw-rw----   1 root disk      8,   0 Dec 20 20:13 sda
crw-rw-rw-   1 root root      1,   3 Dec 20 20:13 null
srw-rw-rw-   1 root root           0 Dec 20 20:13 log
prw-r--r--   1 root root           0 Dec 20 20:13 fdata
```
As colunas são apresentadas da esquerda para a direita:

* Permissões
* Proprietário
* Grupo
* Número Maior do Dispositivo
* Número Menor do Dispositivo
* Timestamp
* Nome do Dispositivo

Observe que no comando `ls`, você pode ver o tipo do arquivo com o primeiro bit em cada linha. Os arquivos de dispositivos são denotados pelas seguintes abreviaturas:

* `c` - caractere
* `b` - bloco
* `p` - pipe
* `s` - socket

**Dispositivos Caracter**
------------------------

Esses dispositivos transferem dados, mas um caractere de volta. Você verá muitos dispositivos pseudo (/dev/null) como dispositivos caracteres, esses dispositivos não são fisicamente conectados ao computador, mas permitem ao sistema operacional maior funcionalidade.

**Dispositivos de Bloco**
----------------------

Esses dispositivos transferem dados, mas em grandes blocos de tamanho fixo. Você verá dispositivos que utilizam blocos de dados como dispositivos de bloco, como unidades de disco rígido, sistemas de arquivos, etc.

**Dispositivos de Pipe**
----------------------

Pipes nomeados permitem que dois ou mais processos comuniquem entre si. Esses dispositivos são similares a dispositivos caracteres, mas em vez de ter saída enviada para um dispositivo, é enviada para outro processo.

**Dispositivos de Socket**
-------------------------

Dispositivos de socket facilitem a comunicação entre processos, semelhantes a dispositivos de pipe, mas podem comunicar-se com muitos processos ao mesmo tempo.

**Caracterização de Dispositivos**
--------------------------------

Os dispositivos são caracterizados usando dois números: o número maior do dispositivo e o número menor do dispositivo. Você pode ver esses números no exemplo acima, separados por uma vírgula. Por exemplo, se um dispositivo tiver os números de dispositivo: 8, 0:
O número maior do dispositivo representa o driver do dispositivo que é usado. Nesse caso, 8 é o número maior comum para dispositivos de bloco `sd`. O número menor indica qual dispositivo único é isso dentro dessa classe de driver, no caso, 0 é usado para representar o primeiro dispositivo (a).

**Arquivos de Exemplo**
=====================

Você pode verificar essas informações em arquivos como [arquivo.txt](arquivo.txt) ou [exemplo.txt](exemplo.txt), que contém exemplos de dispositivos de caractere, de bloco e de pipe.

**Times e Core**
----------------

Você também pode encontrar exemplos de dispositivos em times de futebol, como [Barcelona.txt](Barcelona.txt) ou [Juventus.txt](Juventus.txt), que contém informações sobre a estrutura de times de futebol, incluindo os jogadores e as estatísticas.