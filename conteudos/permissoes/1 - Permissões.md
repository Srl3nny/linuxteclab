Já vimos que os arquivos possuem diferentes permissões ou modos de arquivo. Vamos explorar um exemplo:

```bash
$ ls -l Desktop/
drwxr-xr-x 2 bruno linuxteclab 4096 Dec 12 1:45 .
```

Uma permissão de arquivo se compõe de quatro partes. A primeira é o tipo de arquivo, representada pelo primeiro caractere da permissão. No nosso caso, estamos examinando um diretório, o tipo de arquivo é denotado pela letra “d”. Em geral, você verá um “-” para um arquivo regular.

As próximas três partes da permissão de arquivo são as permissões reais. As permissões são agrupadas em 3 bits cada. Os primeiros 3 bits representam as permissões do usuário, em seguida, as permissões do grupo e, por fim, as permissões de outros. Adicionei um pipe para facilitar a diferenciação.

```plain
d | rwx | r-x | r-x
```

Cada caractere representa uma permissão diferente:

- `r`: leitura
- `w`: escrita
- `x`: execução (ou seja, um programa executável)
- `-`: vazio ou sem permissão

No exemplo acima, vemos que o usuário “bruno” tem permissões de leitura, escrita e execução no arquivo. O grupo “linuxteclab” tem permissões de leitura e execução. Por fim, os outros usuários (ou seja, todos os demais) têm permissões de leitura e execução.