---
title: env Linux
youtube: null
pagetitle: env · consultar variáveis de ambiente
description: env · consultar variáveis de ambiente. Tutorial em português da trilha
  Texto e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

Execute o seguinte comando, mas digite a variável como em letras maiúsculas:

```bash
$ echo $HOME
```

Você deverá ver o caminho para o seu diretório home, o meu se parece com /home/bruno.

E esse comando?

```bash
$ echo $USER
```

Você deverá ver seu nome de usuário! De onde vem essa informação? Está vindo de suas variáveis de ambiente.

Você pode visualizá-los digitando:

```bash
$ env
```

Isso exibirá muitas informações sobre as variáveis ​​de ambiente que estão definidas atualmente. Essas variáveis ​​contêm informações úteis que o shell e outros processos podem usar.

Vamos fazer um teste, crie uma variável qualquer e depois verifique com o comando env.

```bash
$ export my_var="teste"
$ env
```

O comando export no Linux é usado para definir variáveis de ambiente e torná-las acessíveis para processos filhos do shell atual.

Uma variável particularmente importante é a variável PATH. Você pode acessar essas variáveis ​​colocando $ na frente do nome da variável, assim:

```bash
$ echo $PATH
```

Isso retorna uma lista de caminhos separados por dois pontos que seu sistema pesquisa quando procura um comando. Digamos que você baixe e instale manualmente um pacote da Internet e o coloque em um diretório não padrão e queira executar esse comando, o sistema irá reclamar de comando não encontrado. Mas você está olhando o binário em uma pasta e sabe que ele existe. O que está acontecendo é que a variável $PATH não verifica esse diretório onde este o binário, então está gerando um erro. Digamos que você tenha vários binários que deseja executar nesse diretório. Você pode simplesmente modificar a variável PATH para incluir esse diretório em sua variável de ambiente PATH.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-05.json" aria-labelledby="arte-do-texto-05-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-05-exercise-title">Desafio · env</h3>
  <p class="exercise-prompt">Use echo para mostrar o valor da variável de ambiente HOME.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-05-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-05-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é echo $HOME.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
