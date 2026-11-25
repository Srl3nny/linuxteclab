---
title: Como funcionam os sinais no Linux
pagetitle: Como funcionam os sinais no Linux
description: Como funcionam os sinais no Linux. Tutorial em português da trilha Processos
  do LinuxTecLab.
categories:
- Processos
---

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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-06.json" aria-labelledby="processos-06-exercise-title">
  <h3 class="exercise-title" id="processos-06-exercise-title">Desafio · Sinais no Linux</h3>
  <p class="exercise-prompt">Qual sinal é normalmente gerado por Ctrl+C para o grupo de processos em primeiro plano? Digite o nome simbólico.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-06-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="processos-06-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é SIGINT.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
