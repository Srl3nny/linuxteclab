---
title: O diretório /dev no Linux
description: O diretório /dev no Linux. Entenda como o kernel apresenta os dispositivos
  ao sistema.
categories:
- Dispositivos
---

::: markdown

Quando você conecta um dispositivo a sua máquina, geralmente é necessário um driver de dispositivo para funcionar corretamente. Pode interagir com os drivers de dispositivo através de arquivos de dispositivo ou nós de dispositivo, que são arquivos especiais que se parecem com arquivos regulares. Como esses arquivos de dispositivo são apenas como arquivos regulares, pode usar programas como `ls`, `cat`, etc. para interagir com eles. Esses arquivos de dispositivo são geralmente armazenados na diretório `/dev`. Vá em frente e execute o comando `ls /dev` no seu sistema, verá uma grande quantidade de arquivos de dispositivo que estão no seu sistema.

por exemplo, se você executar o comando:
```
$ ls /dev
```
verá arquivos como `/dev/null`, que é um dispositivo especial que descarta qualquer entrada que for enviada para ele.

 antigamente, se você queria acrescentar um dispositivo ao seu sistema, adicionava-se o arquivo de dispositivo no diretório `/dev` e provavelmente esquecia-se dele. Mas se fazia isso várias vezes, o diretório `/dev` ficava cheio de arquivos de dispositivo estáticos de dispositivos que você havia desatualizado, parado de usar, etc. Além disso, dispositivos também eram atribuídos arquivos de dispositivo na ordem em que o kernel os encontrava. Portanto, se cada vez que reiniciava o seu sistema, os dispositivos poderiam ter arquivos de dispositivo diferentes dependendo do momento em que foram descobertos.

 Felizmente, não usamos mais esse método. Agora, temos algo que usamos para adicionar e remover dispositivos dinamicamente que estão sendo usados no sistema, e vamos discutir isso nas lições futuras.
:::

Reforcei a tradução para que seja mais fluida e natural, acrescentei parênteses para esclarecer conceitos e usei exemplos para tornar o texto mais claro. Além disso, adicionei um código de block para incluir os exemplos de comando no texto.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/devices-01.json" aria-labelledby="devices-01-exercise-title">
  <h3 class="exercise-title" id="devices-01-exercise-title">Desafio · diretorio-dev</h3>
  <p class="exercise-prompt">Use ls para listar os nomes dos arquivos de dispositivo em /dev.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="devices-01-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="devices-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ls /dev.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Dispositivos](../../temas.qmd#devices)
