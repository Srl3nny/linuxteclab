---
title: Terminais e processos associados
pagetitle: Terminais e processos associados
description: Terminais e processos associados. Tutorial em português da trilha Processos
  do LinuxTecLab.
categories:
- Processos
---

Vimos o campo TTY na saída do comando `ps`. O TTY é o terminal que executou o comando.

Existem dois tipos de terminais: dispositivos de terminal regulares e dispositivos de pseudo terminal. Um dispositivo de terminal regular é um dispositivo de terminal nativo que você pode digitar e enviar saída para o seu sistema. Isso pode soar como a aplicação de terminal que você está lançando para acessar a sua shell, mas não é.

Vamos adiantar um passo e você verá como tudo isso se desenvolve. Digite Ctrl-Alt-F1 para se conectar ao TTY1 (a primeira.console virtual), você notará que não há nada exceto o terminal, sem gráficos, etc. Isso é considerado um dispositivo de terminal regular. Você pode sair desta modalidade pressionando Ctrl-Alt-F7.

Um pseudo terminal é o que você tem sido usado para trabalhar, pode ser o terminator, qterminal, gnome terminal, etc... Eles emulam terminais com janela de shell terminal e são denotados por `PTS`. Se você olhar novamente para a saída do `ps`, verá o processo da sua shell sob `pts/*`.

# Voltando ao terminal de controle


Processos são geralmente ligados a um terminal de controle. Por exemplo, se você estivesse executando um programa em sua janela de shell, como o comando `find`, e fechou a janela, o seu processo também iria com ele.

Existem processos especiais como processos de demons, que são processos especiais que estão mantendo o sistema em funcionamento. Eles começam durante a inicialização do sistema e usualmente são terminados quando o sistema é encerrado. Eles funcionam em segundo plano e, já que não queremos que esses processos especiais sejam terminados, eles não estão ligados a um terminal de controle. Na saída do `ps`, o TTY é listado como `?`, indicando que não tem um terminal de controle.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-02.json" aria-labelledby="processos-02-exercise-title">
  <h3 class="exercise-title" id="processos-02-exercise-title">Desafio · Controlando o Terminal</h3>
  <p class="exercise-prompt">Qual valor na coluna TTY indica que o processo não tem terminal de controle? Digite apenas o símbolo.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-02-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="processos-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ?.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
