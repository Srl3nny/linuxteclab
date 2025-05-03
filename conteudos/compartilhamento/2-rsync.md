**Rsync: um Poderoso Ferramenta de Sincronização de Arquivos**
=============================================

Se você precisa copiar dados de diversos hosts, é provável que tenha ouvido falar sobre o rsync (ou "remote synchronization"). Embora semelhante ao scp, o rsync apresenta uma diferença fundamental. Ele utiliza um algoritmo especial que compara, avançadamente, se os arquivos que está copiando já existem no destino e apenas copia as diferenças. Por exemplo, imagine que você estava copiando um arquivo quando sua conexão foi interrompida, parando o processo de cópia no meio. Em vez de ter que recopiar tudo desde o início, o rsync apenas copia os que não foram copiados.

Além disso, o rsync verifica a integridade dos arquivos que está copiando com checksums. Essas pequenas otimizações permitem uma transferência de arquivos mais flexível e tornam o rsync ideial para a sincronização de diretórios remotamente e localmente, backups de dados e transferências de dados de grande porte.

**Opções Comuns de Uso do Rsync**
--------------------------------

* `v`: saída VERBOSE.
* `r`: recursividade na pasta.
* `h`: saída legível por humanos.
* `z`: compressão para transferências mais fáceis, ótimo para conexões lentas.

**Copiar ou Sincronizar Arquivos no Mesmo Host**
--------------------------------------------

`$ rsync -zvr /meu/local/dir/a /meu/local/dir/b`

**Copiar ou Sincronizar Arquivos do Host Remoto para o Host Local**
---------------------------------------------------------

`$ rsync /local/dir bruno@192.168.15.100:/remoto/dir`

**Copiar ou Sincronizar Arquivos do Host Local para o Host Remoto**
-----------------------------------------------------------

`$ rsync bruno@192.168.15.100/remoto/dir /local/dir`
