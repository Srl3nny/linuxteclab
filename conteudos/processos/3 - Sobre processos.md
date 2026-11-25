---
title: Como identificar processos no Linux
pagetitle: Como identificar processos no Linux
description: Como identificar processos no Linux. Tutorial em português da trilha
  Processos do LinuxTecLab.
categories:
- Processos
---

Antes de mergulhar em aplicações práticas de processo, precisamos entender o que são e como funcionam. Este tema pode ser confuso, pois estamos mergulhando nos detalhes.

Um processo, como disse antes, é um programa em execução no sistema, seja mais preciso, é o sistema alocando memória, processador, I/O para que o programa execute. Um processo é uma instância de um programa em execução - abra três janelas de terminal, em duas janelas, execute o comando `cat` sem passar opções (o processo do cat ficará aberto porque espera stdin). Agora, em uma janela adicional, execute: `ps aux | grep cat`. Você verá que há dois processos para o cat, embora estejam executando o mesmo programa.

É o kernel que está encarregado dos processos. Quando executamos um programa, o kernel carrega o código do programa na memória, determina e aloca recursos e, em seguida, mantém controle sobre cada processo. O kernel sabe:

* O status do processo
* Os recursos que o processo está usando e recebe
* O proprietário do processo
* Tratamento de sinais (mais sobre isso posteriormente)
* E basicamente, tudo o mais

Todos os processos tentam pegar um pedaço desses "recursos", é o trabalho do kernel garantir que processos recebam a quantidade certa de recursos com base na demanda do processo. Quando um processo termina, os recursos que ele usou agora estão livre para outros processos.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-03.json" aria-labelledby="processos-03-exercise-title">
  <h3 class="exercise-title" id="processos-03-exercise-title">Desafio · Sobre processos</h3>
  <p class="exercise-prompt">Qual sigla representa o identificador de um processo?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-03-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="processos-03-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é PID.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
