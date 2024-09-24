# ls

Agora que sabemos como nos movimentar pelo sistema, como podemos descobrir o que está disponível para nós? Neste momento é como se estivéssemos nos movendo no escuro. Bem, não mais, podemos usar o maravilhoso comando ls para listar o conteúdo do diretório. O comando ls listará diretórios e arquivos no diretório atual por padrão, mas você pode especificar qual caminho deseja listar os diretórios.

```bash
$ ls -l /home/bruno
total 36
drwxr-xr-x 2 caires caires 4096 jun 29 14:29 'Área de trabalho'
drwxr-xr-x 3 caires caires 4096 jun 29 14:26  book
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Documentos
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Downloads
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Imagens
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Modelos
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Música
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Público
drwxr-xr-x 2 caires caires 4096 jun 29 14:29  Vídeos

```

&nbsp;

ls é uma ferramenta bastante útil, mas também mostra informações detalhadas sobre os arquivos e diretórios que você está visualizando.

```bash
$ ls -la
total 84
drwxr-xr-x 15 caires caires 4096 jun 29 14:16  .
drwxr-xr-x  4 root   root   4096 jun 29 03:14  ..
drwxr-xr-x  2 caires caires 4096 jun 29 14:29 'Área de trabalho'
-rw-------  1 caires caires   35 jun 29 15:56  .bash_history
-rw-r--r--  1 caires caires  220 jun 29 03:14  .bash_logout
-rw-r--r--  1 caires caires 3391 jun 29 03:14  .bashrc
-rw-r--r--  1 caires caires 3526 jun 29 03:14  .bashrc.original
drwxr-xr-x  3 caires caires 4096 jun 29 14:26  book
drwx------  9 caires caires 4096 jun 29 15:56  .cache
drwx------  9 caires caires 4096 jun 29 15:56  .config
drwxr-xr-x  2 caires caires 4096 jun 29 14:29  Documentos

```

Observe também que nem todos os arquivos em um diretório estarão visíveis. Nomes de arquivos que começam com . estão ocultos, você pode visualizá-los com o comando ls e passar a opção -a para ele (amostra todos arquivos).

Há também mais uma opção ls útil, -l para long, que mostra uma lista detalhada de arquivos em um formato longo. Isso mostrará informações detalhadas, começando pela esquerda: permissões de arquivo, número de links, nome do proprietário, grupo de proprietários, tamanho do arquivo, carimbo de data/hora da última modificação e nome do arquivo/diretório.

Os comandos têm opções (ou argumentos, como você quiser chamá-los) para adicionar mais funcionalidades. Veja como adicionamos -a e -l, bem, você pode adicionar os dois junto com -la. A ordem dos argumentos determina a ordem em que eles entram, na maioria das vezes isso realmente não importa, então você também pode fazer ls -al e ainda assim funcionaria.