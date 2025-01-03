# stderr

Vamos tentar algo um pouco diferente agora, vamos tentar listar o conteúdo de um diretório que não existe no seu sistema e redirecionar a saída para o arquivo arq.txt novamente.

```bash
$ ls /tmp/naoexiste > arq.txt

```

Ok, mas reparou que foi exibido na tela:

```bash
ls: não foi possível acessar '/tmp/naoexiste': Arquivo ou diretório inexistente
```

Agora você provavelmente está pensando: aquela mensagem não deveria ter sido enviada para o arquivo? Na verdade, há outro fluxo de E/S em jogo aqui chamado erro padrão (stderr). Por padrão, o stderr também envia sua saída para a tela, mas é um fluxo completamente diferente do stdout.

Então você precisará redirecionar sua saída de uma maneira diferente. Teremos que usar descritores de arquivo. Um descritor de arquivo é um número não negativo usado para acessar um arquivo ou fluxo. Iremos aprofundar isso mais tarde, mas por enquanto sabemos que o descritor de arquivo para stdin, stdout e stderr é 0, 1 e 2 respectivamente. Então agora, se quisermos redirecionar nosso stderr para o arquivo, podemos fazer isso:

```bash
$ ls /tmp/naoexiste 2> arq.txt
```

Agora, e se eu quisesse ver stderr e stdout no arquivo arq.txt? Também é possível fazer isso com descritores de arquivo:

```bash
$ ls /tmp/naoexiste > arq.txt 2>&1
```

Isso envia os resultados de ls /tmp/naoexiste para o arquivo arq.txt e então redireciona o stderr para o stdout via 2>&1. A ordem das operações aqui é importante, 2>&1 envia stderr para qualquer que seja o stdout que esteja apontando. Nesse caso, stdout está apontando para um arquivo, então 2>&1 também envia stderr para um arquivo. Portanto, se você abrir o arquivo arq.txt, verá stderr e stdout. No nosso caso, o comando acima gera apenas stderr.

Existe uma maneira mais curta de redirecionar stdout e stderr para um arquivo, e você verá ele bastante por aí:

```bash
$ ls /tmp/naoexiste &> arq.txt
```

Agora, e se eu não quiser nada desse lixo e quiser se livrar completamente das mensagens stderr? Bem, você também pode redirecionar a saída para uma chamada de arquivo especial /dev/null e ela descartará qualquer entrada.

```bash
$ ls /tmp/naoexiste 2> /dev/null
```