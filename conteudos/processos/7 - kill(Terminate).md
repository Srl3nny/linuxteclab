# Sinalização e Processos

Você pode enviar sinais que terminam processos, por exemplo, o comando `kill`. Veja como funciona:
```bash
$ kill 12445
```
O número 12445 é o PID do processo que você deseja matar. Por padrão, ele envia o sinal SIGTERM. O sinal SIGTERM é enviado para um processo para solicitar sua término permitindo que ele libere seus recursos de forma limpa e guarde seu estado.

Você também pode especificar um sinal com o comando `kill`:
```bash
$ kill -9 12445
```
Isso executará o sinal SIGKILL e matará o processo imediatamente.

# Diferença entre SIGHUP, SIGINT, SIGTERM, SIGKILL e SIGSTOP

Esses sinais podem parecer muito semelhantes, mas tem suas diferenças.

**SIGHUP**: É um sinal de "hangup", enviado para um processo quando o terminal de controle é fechado. Por exemplo, se você fechasse uma janela de terminal que havia um processo rodando nele, você receberia um sinal SIGHUP. Nesse caso, você está sendo "colocado na espera".

**SIGINT**: É um sinal de "interrupt", portanto, você pode usar Ctrl+C e o sistema tentará matar o processo de forma graciosa.

**SIGTERM**: Mata o processo, mas permite que ele faça alguns arranjos antes de parar. Isso é útil porque os processos podem ter recursos que precisam ser liberados antes de serem encerrados.

**SIGKILL**: Mata o processo! Não há nenhuma limpeza ou arranjo.

**SIGSTOP**: Pare/suspende um processo.