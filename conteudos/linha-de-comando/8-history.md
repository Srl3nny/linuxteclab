---
title: history · consultar o histórico do shell
pagetitle: history · consultar o histórico do shell
description: history · consultar o histórico do shell. Tutorial em português da trilha
  Linha de comando do LinuxTecLab.
categories:
- Linha de comando
---

# history

Em seu shell, há um histórico dos comandos que você digitou anteriormente, você pode realmente consultar esses comandos. Isso é bastante útil quando você deseja localizar e executar um comando usado anteriormente sem digitá-lo novamente.

```bash
$ history
```

Quer executar o mesmo comando que você fez antes, basta clicar na seta para cima ↑.

Quer executar o comando anterior sem digitá-lo novamente? Usar **!!**. Se você digitou ***cat file1*** e deseja executá-lo novamente, basta ir !! e executará o último comando que você executou.

Outro atalho do histórico é ***ctrl-R***, este é o comando de pesquisa reversa, se você pressionar ***ctrl-R*** e começar a digitar partes do comando que deseja, ele mostrará as correspondências e você poderá navegar por elas pressionando a tecla ***ctrl-R*** de novo. Depois de encontrar o comando que deseja usar novamente, basta pressionar a tecla Enter.

Nosso terminal está ficando um pouco confuso, não? Vamos fazer uma pequena limpeza, use o comando clear para limpar sua tela.

```bash
$ clear
```

Enquanto falamos sobre coisas úteis, um dos recursos mais úteis em qualquer ambiente de linha de comando é o Autocompletar usando o ***TAB***. Se você começar a digitar o início de um comando, arquivo, diretório, etc. e pressionar a tecla ***TAB***, ele será preenchido automaticamente com base no que encontrar no diretório que você está pesquisando, desde que você não tenha nenhum outro arquivo que comece com aqueles letras. Por exemplo, se você estava tentando executar o comando chrome, você pode digitar chr e pressionar ***TAB*** e ele preencherá automaticamente o chrome.

Experimente usar o ***TAB,*** isso facilita e vida.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/history.json" aria-labelledby="history-exercise-title">
  <h3 class="exercise-title" id="history-exercise-title">Missão 08 · Consulte seus comandos</h3>
  <p class="exercise-prompt">Digite o comando que mostra o histórico de comandos do Bash.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="history-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="history-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é history.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
