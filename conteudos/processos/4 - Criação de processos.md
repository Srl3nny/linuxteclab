Nesse próximo passo, vamos explorar a criação de processos em profundidade. O conteúdo destas lições e da próxima são meramente informativos, para que você possa entender como as coisas funcionam por baixo dos panos. É livre para voltar a este material mais tarde, após trabalhar com processos por um determinado tempo.

**Criando Processos**

Quando um novo processo é criado, um processo existente basicamente clona a si mesmo utilizando chamadas de sistema chamadas fork. A chamada de sistema fork cria um processo filho quase idêntico, que recebe um novo ID de processo (PID) e o processo original se torna seu processo pai e tem algo chamado ID de processo pai (PPID). Em seguida, o processo filho pode continuar a usar o mesmo programa que seu processo pai estava usando anteriormente, ou mais frequentemente, usar a chamada de sistema execve para lançar um programa novo. Essa chamada de sistema destrói a gestão de memória que o kernel criou para aquele processo e configura novas para o programa novo.

# Ação

Veja isso em ação:

```md
$ ps l
```

A opção l fornece uma "visão longa" ou mais detalhada dos processos em execução. Você verá uma coluna rotulada PPID, que é o ID de pai. Agora, olhe para o seu terminal, você verá um processo rodando que é o seu shell, então, em meu sistema, tenho um processo rodando bash. Agora, lembre-se quando você executou o comando ps l, você o executou a partir do processo que estava rodando bash. Agora, você verá que o PID do shell bash é o PPID do comando ps l.

# A "Mãe" de todos os Processos

Se todos os processos têm que ter um pai e são apenas cópias um do outro, haverá uma "mãe" de todos os processos, certo? Sim, você está correto.
Quando o sistema inicializa, o kernel cria um processo chamado init, que tem um PID de 1. O processo init não pode ser interrompido a menos que o sistema feche. Ele é executado com privilégios de root e executa muitos processos que mantém o sistema em execução. 