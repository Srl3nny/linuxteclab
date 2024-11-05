Aprenderemos alguns comandos úteis que você pode usar para processar texto. Antes de começarmos, vamos criar um arquivo com o qual trabalharemos. Copie e cole o seguinte comando, depois de fazer isso, adicione uma TAB entre cachorro e preguiçoso (pressione Ctrl-v + TAB, isso insere um caractere de tabulação real).

```bash
$ echo 'O animal rápido; raposa salta sobre o cachorro preguiçoso' > exemplo.txt
```

O primeiro comando que aprenderemos é o comando cut. Extrai partes de texto de um arquivo.

Para extrair o conteúdo por uma lista de caracteres:


    $ cut -c 5 exemplo.txt


&nbsp;Isso mostra o quinto caractere em cada linha do arquivo. Neste caso é “q”, observe que o espaço também conta como caractere.

Para extrair o conteúdo de um campo, precisaremos fazer uma pequena modificação:

```bash
$ cut -f 2 exemplo.txt
```

&nbsp;O sinalizador -f ou campo corta o texto com base nos campos; por padrão, ele usa TABs como delimitadores, portanto, tudo separado por uma TAB é considerado um campo. Você deverá ver “cachorro” como sua saída.

Você pode combinar o sinalizador de campo com o sinalizador de delimitador para extrair o conteúdo por um delimitador personalizado:

```bash
$ cut -f 1 -d ";" exemplo.txt
```

Assim você pegará o primeiro campo -f 1, e usará como delimitador o caracter ";" -d ";". Deverá ver no terminal "O animal rápido".

&nbsp;