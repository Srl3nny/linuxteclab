---
title: nice e prioridade de processos
pagetitle: nice e prioridade de processos
description: nice e prioridade de processos. Tutorial em português da trilha Processos
  do LinuxTecLab.
categories:
- Processos
---

Quando executamos vários softwares, como Chrome, Microsoft Word or Photoshop ao mesmo tempo, Pode parecer que o computador roda tudo ao mesmo tempo. No entanto, isso não é exatamente verdade. Os processos utilizam o processador para um pequeno período de tempo chamado time slice. Em seguida, pausam por milissegundos e outro processo recebe um time slice. Por padrão, a gestão de processos ocorre em uma sequência round-robin. Cada processo recebe um número suficiente de time slices até ser concluído.
O kernel é responsável por fazer as trocas entre os processos e faz um ótimo trabalho nisso a maioria do tempo.

Os processos não podem decidir quando e por quanto tempo recebem tempo da CPU. Se todos os processos se comportassem normalmente, cada um (aproximadamente) receberia uma quantidade igual de tempo da CPU. No entanto, há uma maneira de influenciar o algoritmo de agendamento de processos do kernel com um valor de nice. A nice é um nome um pouco estranho, mas o que significa é que os processos têm um número para determinar sua prioridade para a CPU. Um número alto significa que o processo é "nice" e tem uma prioridade baixa para a CPU, enquanto um número baixo ou negativo significa que o processo não é tão "nice" e deseja obter tanto tempo da CPU quanto possível.
```bash
$ top
```
Você pode ver uma coluna chamada "NI" agora, que é o nível de nice de um processo.
Para mudar o nível de nice, você pode usar os comandos nice e renice:
```bash
$ nice -n 5 apt upgrade
```
O comando nice é usado para definir a prioridade para um processo novo. O comando renice é usado para definir prioridade em um processo existente.
```bash
$ renice 10 -p 3245
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-08.json" aria-labelledby="processos-08-exercise-title">
  <h3 class="exercise-title" id="processos-08-exercise-title">Desafio · niceness</h3>
  <p class="exercise-prompt">Use nice para iniciar sleep 30 com valor de niceness 5.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-08-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="processos-08-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é nice -n 5 sleep 30.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
