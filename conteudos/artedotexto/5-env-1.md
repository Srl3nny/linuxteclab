Execute o seguinte comando, mas digite a variável como em letras maiúsculas:

```bash
$ echo $HOME
```

Você deverá ver o caminho para o seu diretório home, o meu se parece com /home/bruno.

E esse comando?

```bash
$ echo $USER
```

Você deverá ver seu nome de usuário! De onde vem essa informação? Está vindo de suas variáveis de ambiente.

Você pode visualizá-los digitando:

```bash
$ env
```

Isso exibirá muitas informações sobre as variáveis ​​de ambiente que estão definidas atualmente. Essas variáveis ​​contêm informações úteis que o shell e outros processos podem usar.

Vamos fazer um teste, crie uma variável qualquer e depois verifique com o comando env.

```bash
$ export my_var="teste"
$ env
```

O comando export no Linux é usado para definir variáveis de ambiente e torná-las acessíveis para processos filhos do shell atual.

Uma variável particularmente importante é a variável PATH. Você pode acessar essas variáveis ​​colocando $ na frente do nome da variável, assim:

```bash
$ echo $PATH
```

Isso retorna uma lista de caminhos separados por dois pontos que seu sistema pesquisa quando procura um comando. Digamos que você baixe e instale manualmente um pacote da Internet e o coloque em um diretório não padrão e queira executar esse comando, o sistema irá reclamar de comando não encontrado. Mas você está olhando o binário em uma pasta e sabe que ele existe. O que está acontecendo é que a variável $PATH não verifica esse diretório onde este o binário, então está gerando um erro. Digamos que você tenha vários binários que deseja executar nesse diretório. Você pode simplesmente modificar a variável PATH para incluir esse diretório em sua variável de ambiente PATH.