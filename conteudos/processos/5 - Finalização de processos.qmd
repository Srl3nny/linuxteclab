Agora que sabemos o que acontece quando um processo é criado, o que está acontecendo quando não precisamos mais dele? 
Um processo pode sair usando o chamada de sistema `_exit`, o que liberará os recursos que o processo estava usando para realocação. Quando um processo está pronto para terminar, ele avisa o kernel por que está terminando com algo chamado um status de término. A maioria comumente, um status de 0 significa que o processo teve sucesso. No entanto, isso não é o suficiente para terminar completamente um processo. O processo pai precisa confirmar a término do processo filho usando a chamada de sistema `wait` e o que isso faz é verificar o status de término do processo filho. Eu sei que é um pouco macabro pensar nisso, mas a chamada de sistema `wait` é uma necessidade, afinal, qual pai não gostaria de saber como seu filho morreu?
Há outro jeito de terminar um processo e isso envolve usar sinais, o que discutiremos em breve.

# Processos Órfãos

Quando um processo pai morre antes de um processo filho, o kernel sabe que não vai obter uma chamada de sistema `wait`, então em vez disso, os processos tornam-se "órfãos" e são collocados sob o cuidado de `init` (lembre-se, a "mãe de todos os processos"). `Init` irá realizar a chamada de sistema `wait` para esses órfãos eventualmente, permitindo que eles morram.

# Processos Zumbis

O que acontece quando um processo filho termina e o processo pai não fez uma chamada de sistema `wait`? Ainda queremos saber como um processo filho terminou, então embora o processo filho tenha terminado, o kernel converte o processo filho em um processo zumbi. Os recursos utilizados pelo processo filho estão ainda liberados para outros processos, no entanto, há ainda uma entrada na tabela de processos para esse zumbi. Processos zumbis também não podem ser terminados, pois estão tecnicamente "mortos", portanto, você não pode usar sinais para matá-los. Se o processo pai realizar uma chamada de sistema `wait`, o zumbi desaparecerá. Se o processo pai não realizar uma chamada de sistema `wait`, `init` adotará o zumbi e realizará automaticamente `wait` e removerá o zumbi. Ter muitos processos zumbis pode ser ruim, pois eles ocupam espaço na tabela de processos, se ela se preencher, isso impedirá que outros processos iniciem.
***

