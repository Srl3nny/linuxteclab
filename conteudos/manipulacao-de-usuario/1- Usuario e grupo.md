Em qualquer sistema operacional tradicional, existem usuários e grupos. Eles têm como único propósito gerenciar o acesso e as permissões. Quando um processo é executado, ele executará como proprietário do processo. O acesso a arquivos e a propriedade também são dependentes das permissões. Você não quer que outro usuário veja seus arquivos.

Cada usuário tem seu próprio diretório home, onde seus arquivos específicos são armazenados. Esse diretório pode ser encontrado em `/home/usuario`, mas pode variar dependendo da distribuição e configuração.

O sistema usa IDs de usuário (UID) para gerenciar os usuários. Os nomes de usuário são uma forma de associar usuários com identificação, mas o sistema identifica os usuários por suas IDs. O sistema também usa grupos para gerenciar permissões. Os grupos são apenas conjuntos de usuários com permissões definidas por esse grupo e são identificados pelo sistema com seu ID de grupo (GID).

No Linux, você também encontrará usuários além dos humanos normais que usam o sistema. Esses usuários podem ser de serviços de sistema, daemons que executam processos contínuos para manter o sistema funcionando. Um dos usuários mais importantes é o root ou superusuário. O root é o usuário mais poderoso do sistema e pode acessar qualquer arquivo e começar ou parar qualquer processo. Por essa razão, é perigoso operar como root o tempo todo, pois você pode remover arquivos críticos do sistema. Felizmente, se precisar de acesso root e um usuário tiver acesso root, ele pode executar um comando como root em vez disso usando o comando `sudo`. O comando `sudo`  é usado para executar um comando com acesso root, assim é possível dar esse acesso para vários usuários. 

Tente visualizar um arquivo protegido como `/etc/shadow`:
```bash
$ cat /etc/shadow
```
Observe como você recebe um erro de permissão negada. Olhe as permissões com:
```bash
$ ls -la /etc/shadow
-rw-r----- 1 root shadow 1134 Dec 1 11:45 /etc/shadow
```
Não vamos abordar permissões ainda, mas o que está acontecendo é que o arquivo é proprietário do root e você precisará de acesso root ou ser membro do grupo shadow para ler o conteúdo. Agora, execute o comando com `sudo`:
```bash
$ sudo cat /etc/shadow
```
Agora você poderá ver o conteúdo do arquivo, caso esteja com permissões de execução do sudo, mas antes terá que usar sua senha!
