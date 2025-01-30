Em Linux, tudo é considerado um arquivo, inclusive informações de processos. A detalhada informações de processos são armazenadas em um filesystem especial chamado `/proc`.
```
$ ls /proc
```
Você deve ver vários valores aqui. Existem sub-diretórios para cada PID. Se você olhasse um PID no output do comando `ps`, poderia encontrá-lo no diretório `/proc`.

Vá em frente e entre em um dos processos e observe o arquivo:
```
$ cat /proc/12345/status
```
 Você deve ver informações de estado do processo e informações mais detalhadas. O diretório `/proc` é como o kernel vê o sistema, então há muito mais informações aqui do que você veria no comando `ps`.
