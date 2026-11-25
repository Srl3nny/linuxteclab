---
title: O sistema de arquivos /proc
pagetitle: O sistema de arquivos /proc
description: O sistema de arquivos /proc. Tutorial em português da trilha Processos
  do LinuxTecLab.
categories:
- Processos
---

Em Linux, tudo é considerado um arquivo, inclusive informações de processos. A detalhada informações de processos são armazenadas em um filesystem especial chamado `/proc`.
```
$ ls /proc
```
Você deve ver vários valores aqui. Existem sub-diretórios para cada PID. Se você olhasse um PID no output do comando `ps`, poderia encontrá-lo no diretório `/proc`.

Vá em frente e entre em um dos processos e observe o arquivo:
```
$ cat /proc/12345/status
```
 Você deve ver informações de estado do processo e informações mais detalhadas. O diretório `/proc` é como o kernel vê o sistema, então há muito mais informações aqui do que você veria no comando `ps`.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-10.json" aria-labelledby="processos-10-exercise-title">
  <h3 class="exercise-title" id="processos-10-exercise-title">Desafio · proc filesystem</h3>
  <p class="exercise-prompt">Use cat para consultar o arquivo status do processo fictício 1234 em /proc.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-10-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="processos-10-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é cat /proc/1234/status.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
