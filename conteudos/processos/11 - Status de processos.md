---
title: Estados de processos no Linux
pagetitle: Estados de processos no Linux
description: Estados de processos no Linux. Tutorial em português da trilha Processos
  do LinuxTecLab.
categories:
- Processos
---

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

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/processos-11.json" aria-labelledby="processos-11-exercise-title">
  <h3 class="exercise-title" id="processos-11-exercise-title">Desafio · Status de processos</h3>
  <p class="exercise-prompt">Qual letra na coluna STAT do ps identifica um processo zumbi?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="processos-11-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="processos-11-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é Z.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Processos](../../temas.qmd#processos)
