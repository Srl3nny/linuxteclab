Vimos o campo TTY na saída do comando `ps`. O TTY é o terminal que executou o comando.

Existem dois tipos de terminais: dispositivos de terminal regulares e dispositivos de pseudo terminal. Um dispositivo de terminal regular é um dispositivo de terminal nativo que você pode digitar e enviar saída para o seu sistema. Isso pode soar como a aplicação de terminal que você está lançando para acessar a sua shell, mas não é.

Vamos adiantar um passo e você verá como tudo isso se desenvolve. Digite Ctrl-Alt-F1 para se conectar ao TTY1 (a primeira.console virtual), você notará que não há nada exceto o terminal, sem gráficos, etc. Isso é considerado um dispositivo de terminal regular. Você pode sair desta modalidade pressionando Ctrl-Alt-F7.

Um pseudo terminal é o que você tem sido usado para trabalhar, pode ser o terminator, qterminal, gnome terminal, etc... Eles emulam terminais com janela de shell terminal e são denotados por `PTS`. Se você olhar novamente para a saída do `ps`, verá o processo da sua shell sob `pts/*`.

# Voltando ao terminal de controle


Processos são geralmente ligados a um terminal de controle. Por exemplo, se você estivesse executando um programa em sua janela de shell, como o comando `find`, e fechou a janela, o seu processo também iria com ele.

Existem processos especiais como processos de demons, que são processos especiais que estão mantendo o sistema em funcionamento. Eles começam durante a inicialização do sistema e usualmente são terminados quando o sistema é encerrado. Eles funcionam em segundo plano e, já que não queremos que esses processos especiais sejam terminados, eles não estão ligados a um terminal de controle. Na saída do `ps`, o TTY é listado como `?`, indicando que não tem um terminal de controle.
