---
title: kill · enviar sinais a processos
pagetitle: kill · enviar sinais a processos
description: kill · enviar sinais a processos. Tutorial em português da trilha Processos
  do LinuxTecLab.
categories:
- Processos
---

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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-07.json" aria-labelledby="processos-07-exercise-title">
  <h3 class="exercise-title" id="processos-07-exercise-title">Desafio · kill(Terminate)</h3>
  <p class="exercise-prompt">No cenário fictício, envie SIGTERM ao processo de PID 1234 usando kill.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-07-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="processos-07-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é kill 1234.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
