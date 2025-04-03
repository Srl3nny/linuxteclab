Antes de mergulhar em aplicações práticas de processo, precisamos entender o que são e como funcionam. Este tema pode ser confuso, pois estamos mergulhando nos detalhes.

Um processo, como disse antes, é um programa em execução no sistema, seja mais preciso, é o sistema alocando memória, processador, I/O para que o programa execute. Um processo é uma instância de um programa em execução - abra três janelas de terminal, em duas janelas, execute o comando `cat` sem passar opções (o processo do cat ficará aberto porque espera stdin). Agora, em uma janela adicional, execute: `ps aux | grep cat`. Você verá que há dois processos para o cat, embora estejam executando o mesmo programa.

É o kernel que está encarregado dos processos. Quando executamos um programa, o kernel carrega o código do programa na memória, determina e aloca recursos e, em seguida, mantém controle sobre cada processo. O kernel sabe:

* O status do processo
* Os recursos que o processo está usando e recebe
* O proprietário do processo
* Tratamento de sinais (mais sobre isso posteriormente)
* E basicamente, tudo o mais

Todos os processos tentam pegar um pedaço desses "recursos", é o trabalho do kernel garantir que processos recebam a quantidade certa de recursos com base na demanda do processo. Quando um processo termina, os recursos que ele usou agora estão livre para outros processos.

