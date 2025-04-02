# history

Em seu shell, há um histórico dos comandos que você digitou anteriormente, você pode realmente consultar esses comandos. Isso é bastante útil quando você deseja localizar e executar um comando usado anteriormente sem digitá-lo novamente.

```bash
$ history
```

Quer executar o mesmo comando que você fez antes, basta clicar na seta para cima ↑.

Quer executar o comando anterior sem digitá-lo novamente? Usar **!!**. Se você digitou ***cat file1*** e deseja executá-lo novamente, basta ir !! e executará o último comando que você executou.

Outro atalho do histórico é ***ctrl-R***, este é o comando de pesquisa reversa, se você pressionar ***ctrl-R*** e começar a digitar partes do comando que deseja, ele mostrará as correspondências e você poderá navegar por elas pressionando a tecla ***ctrl-R*** de novo. Depois de encontrar o comando que deseja usar novamente, basta pressionar a tecla Enter.

Nosso terminal está ficando um pouco confuso, não? Vamos fazer uma pequena limpeza, use o comando clear para limpar sua tela.

```bash
$ clear
```

Enquanto falamos sobre coisas úteis, um dos recursos mais úteis em qualquer ambiente de linha de comando é o Autocompletar usando o ***TAB***. Se você começar a digitar o início de um comando, arquivo, diretório, etc. e pressionar a tecla ***TAB***, ele será preenchido automaticamente com base no que encontrar no diretório que você está pesquisando, desde que você não tenha nenhum outro arquivo que comece com aqueles letras. Por exemplo, se você estava tentando executar o comando chrome, você pode digitar chr e pressionar ***TAB*** e ele preencherá automaticamente o chrome.

Experimente usar o ***TAB,*** isso facilita e vida.