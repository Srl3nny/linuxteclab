Processos são programas que estão sendo executados na sua máquina. Eles são gerenciados pelo kernel e cada processo tem um ID associado a ele, chamado de ID de processo (PID). Esse PID é atribuído na ordem em que os processos são criados.

execute o comando `ps` para ver uma lista de processos em execução:

```bash
$ ps
PID        TTY     STAT   TIME          CMD
41230    pts/4    Ss        00:00:00     bash
51224    pts/4    R+        00:00:00     ps
```

Isso mostra um quadro dos processos atuais, com informações relevantes para o administrador da máquina:

* PID: ID de processo
* TTY: Terminal de controle associado ao processo
* STAT: Código de status do processo
* TIME: Tempo de uso do CPU total
* CMD: Nome do executável/comando

Se você revisar a página do manual do comando `ps`, verá que há muitas opções de comando que você pode passar, que variarão dependendo das opções que você deseja usar - BSD, GNU ou Unix. Em minha opinião, o estilo BSD é mais popular para usar, por isso vamos trabalhar com isso. Se você estiver curioso, a diferença entre estilos é o número de traços/hífens que você usa nas opções.

```bash
$ ps aux
```

O caractere `a` exibe todos os processos em execução, incluindo os que estão being executados por outros usuários. O caractere `u` mostra mais detalhes sobre os processos. E finalmente, o caractere `x` lista todos os processos que não têm um terminal associado, que são os programas mais comuns em processos daemon que são executados como parte do início do sistema.

Você notará que está vendo muitos campos agora, não há necessidade de memorizar todos eles.

* USER: Usuário efetivo (o que estamos usando).
* PID: ID de processo.
* %CPU: CPU tempo usado dividido pelo tempo que o processo tem estado rodando.
* %MEM: Razão da tamanho de conjunto residente do processo sobre a memória física da máquina.
* VSZ: Uso de memória virtual do processo.
* RSS: Tamanho de conjunto residente, a memória física não substituível que um processo usou.
* TTY: Terminal de controle associado ao processo.
* STAT: Código de status do processo.
* START: Tempo de início do processo.
* TIME: Tempo de uso do CPU total.
* COMMAND: Nome do executável/comando.

O comando `ps` pode se tornar um pouco confuso para ser lido, por ora os campos que vamos usar mais frequentemente são PID, STAT e COMMAND.

Outra ferramenta muito útil é o comando `top`, que fornece informações em tempo real sobre os processos em execução no seu sistema em vez de um instantâneo. Por padrão, você terá uma atualização a cada 10 segundos. O comando `top` é uma ferramenta extremamente útil para ver quais processos estão usando muitos de seus recursos.

```markdown
$ top
```