---
title: Comando Tail
youtube: null
pagetitle: tail · ler o fim de um arquivo
description: tail · ler o fim de um arquivo. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

# Comandos úteis para visualizar arquivos: tail e head

O comando `tail` funciona de forma semelhante ao comando `head`. Mas ele permite visualizar as últimas 10 linhas de um arquivo por padrão.

Exemplo:

```bash
$ tail /var/log/syslog
```

Como no `head` o `tail`, você pode alterar o número de linhas que deseja visualizar.

Exemplo:

```bash
$ tail -n 15 /var/log/syslog
```

Uma opção interessante é a flag `-f` (follow). Ela permite seguir o arquivo à medida que ele cresce, bom para monitorar um serviço em tempo real.

Exemplo:

```bash
$ tail -f /var/log/syslog
```

Enquanto você interage com seu sistema, o arquivo `syslog` estará constantemente mudando. Com `tail -f`, você pode acompanhar tudo o que é adicionado a esse arquivo.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-11.json" aria-labelledby="arte-do-texto-11-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-11-exercise-title">Desafio · tail</h3>
  <p class="exercise-prompt">Use tail para mostrar as últimas 5 linhas de sistema.log.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-11-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-11-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é tail -n 5 sistema.log.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
