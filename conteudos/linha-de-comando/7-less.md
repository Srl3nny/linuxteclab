---
title: less · percorrer textos no terminal
pagetitle: less · percorrer textos no terminal
description: less · percorrer textos no terminal. Tutorial em português da trilha
  Linha de comando do LinuxTecLab.
categories:
- Linha de comando
---

# less

Se você estiver visualizando arquivos de texto maiores que uma saída simples, use o comando less. (existe um comando chamado more que faz algo semelhante, mas nesse caso menos é mais :)) O texto é exibido em forma de página, para que você possa navegar por um arquivo de texto página por página. Vá em frente e observe o conteúdo de um arquivo com menos. Quando estiver no comando less, você poderá usar outros comandos de teclado para navegar no arquivo.

```bash
$ less /tmp/arquivo
```

Use os seguintes comandos para navegar usando less:

q - Usado para sair do less e voltar para o seu shell.  
Page up, Page down, Up e Down - Navegue usando as teclas de seta e de página.  
g - Vai para o início do arquivo de texto.  
G - Vai para o final do arquivo de texto.  
/search - Você pode pesquisar um texto específico dentro do documento de texto. Prefaciando as palavras que você deseja pesquisar com /  
h - Se você precisar de uma ajudinha sobre como usar o less, use a ajuda.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/less.json" aria-labelledby="less-exercise-title">
  <h3 class="exercise-title" id="less-exercise-title">Missão 07 · Leia um texto longo</h3>
  <p class="exercise-prompt">Digite um comando less para abrir manual.txt e percorrer suas páginas.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="less-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="less-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é less manual.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
