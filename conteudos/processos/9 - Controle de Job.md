Imagine que você está trabalhando em uma janela de terminal única e está executando um comando que está levando muito tempo. Não pode interagir com o shell até que seja completo, mas quer continuar trabalhando no seu computador. Felizmente, podemos controlar como nossos processos são executados com **jobs**:

## Envio de um job para o background

Usando um ampersand (&) ao fim do comando, você poderá executá-lo em segundo plano e continuar usando o shell. Vamos ver um exemplo:
```bash
$ sleep 1000 &
$ sleep 1001 &
$ sleep 1002 &
```
## Visualizar todos os jobs de background

Agora você pode visualizar os jobs que enviou para o background.
```bash
$ jobs
[1]    Running     sleep 1000 &
[2]-   Running     sleep 1001 &
[3]+   Running     sleep 1002 &
```
Isso mostrará o ID do job na primeira coluna, seguido pelo status e o comando que rodou. o sinal de "+" próximo ao job ID significa que esse é o job mais recente iniciado. Já o sinal de  '"-" indica o segundo comando mais recente.

## Mandando um job já iniciado para o background

Se você já executou um job e quer enviar para o background, não precisa terminá-lo e começar novamente. Primeiro, suspenda o job com Ctrl-Z, então rode o comando `bg` assim o job será enviado para o background.

```
bruno@angus ~ $ sleep 1003
^Z
[4]+    Stopped     sleep 1003
bruno@angus ~ $ bg
[4]+    sleep 1003 &
bruno@angus ~ $ jobs
[1]    Running     sleep 1000 &
[2]    Running     sleep 1001 &
[3]-   Running     sleep 1002 &
[4]+   Running     sleep 1003 &
```
## Movendo um job do background para o foreground

Para mover um job fuera do background, especifique o ID do job que você deseja. Se você executar `fg` sem parâmetros, ele trará o job mais recente para o foreground (o job com o sinal + ao lado dele)

```bash
$ fg %1
```
## Matando jobs de background

Similarmente, você pode usar a mesma forma para matar processos usando IDs de Job.
```bash
kill %1
```

Em caso de dúvida, é sempre recomendável consultar o manual do `jobs` com `man jobs` para obter mais informações.