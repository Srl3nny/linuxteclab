Vamos dar outra olhada no comando `ps aux`:

```bash
$ ps aux
```

Na coluna `STATE`, você verá muitas combinações de valores. Um processo no Linux pode estar em um número de estados diferentes. Os códigos de estado mais comuns que você irá encontrar estão descritos abaixo:

* **R**: O processo está em execução ou pronto para ser executado, apenas aguardando a liberação do CPU.
* **S**: O processo está dormindo, aguardando a conclusão de um evento, como a entrada de dados na terminal.
* **D**: O processo está indiferente ao sinal, não pode ser interrompido ou cancelado, normalmente porque está causando problemas e precisa ser reiniciado ou corrigido.
* **Z**: O processo zumbi, um processo que foi concluído, mas está aguardando pela coleta de status. Discutimos isso detalhadamente em aula anterior.
* **T**: O processo está parado, suspensamente ou interrompido.

Lembre-se de que entender o estado de um processo é essencial para troubleshooting e gerenciamento de processos no Linux.