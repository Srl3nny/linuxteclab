# less

Se você estiver visualizando arquivos de texto maiores que uma saída simples, use o comando less. (existe um comando chamado more que faz algo semelhante, mas nesse caso menos é mais :)) O texto é exibido em forma de página, para que você possa navegar por um arquivo de texto página por página. Vá em frente e observe o conteúdo de um arquivo com menos. Quando estiver no comando less, você poderá usar outros comandos de teclado para navegar no arquivo.

```bash
$ less /tmp/arquivo
```

Use os seguintes comandos para navegar usando less:

q - Usado para sair do less e voltar para o seu shell.  
Page up, Page down, Up e Down - Navegue usando as teclas de seta e de página.  
g - Vai para o início do arquivo de texto.  
G - Vai para o final do arquivo de texto.  
/search - Você pode pesquisar um texto específico dentro do documento de texto. Prefaciando as palavras que você deseja pesquisar com /  
h - Se você precisar de uma ajudinha sobre como usar o less, use a ajuda.