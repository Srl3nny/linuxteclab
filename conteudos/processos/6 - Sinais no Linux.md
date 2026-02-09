# Sinais no sistema operacional

O sistema operacional emite um sinal (ou notification) para um processo sempre que algo acontece. Por que os sinais?
Eles são interrupções de software e têm inúmeras utilizações:
* O usuário pode digitar um caractere especial no terminal (Ctrl+C ou Ctrl+Z) para matar, interromper ou suspender processos
* Problemas de hardware podem ocorrer e o kernel deseja notificar o processo
* Problemas de software podem ocorrer e o kernel deseja notificar o processo
* São basicamente formas pelas quais processos podem se comunicar

# Processamento de sinais

Quando um sinal é gerado por um evento, é então entregue a um processo, é considerado em estado pendente até ser entregue. Quando o processo é executado, o sinal será entregue. No entanto, os processos têm máscaras de sinal e podem configurar a entrega de sinais para ser bloqueada se especificado. Quando um sinal é entregue, um processo pode fazer várias coisas:
* Ignorar o sinal
* "Capturar" o sinal e executar uma rotina de tratamento específica
* O processo pode ser interrompido, ao invés da chamada de sistema de saída normal
* Blockar o sinal, dependendo da máscara de sinal

Sinais comuns
Cada sinal é definido por inteiros com nomes simbólicos no formato SIGxxx. Algumas das principais sinais são:
* SIGHUP ou HUP ou 1: Encerramento do conector
* SIGINT ou INT ou 2: Interrupção
* SIGKILL ou KILL ou 9: Parar
* SIGSEGV ou SEGV ou 11: Erro de segmentação
* SIGTERM ou TERM ou 15: Encerramento por software
* SIGSTOP ou STOP: Parar

Os números dos sinais podem variar, portanto é comum referir-se a eles por seus nomes.
Alguns sinais são impossíveis de bloquear, um exemplo é o sinal SIGKILL. O sinal de parar destrói o processo.

**Exemplo de utilização de sinais**
Para testar o funcionamento dos sinais, execute o comando `kill` seguido do número do sinal desejado. Por exemplo, para gerar o sinal de parada (SIGTERM) para um processo, use `kill 15 <nome_do_processo>`.
