---
title: Tipos de dispositivos no Linux
description: Tipos de dispositivos no Linux. Entenda como o kernel apresenta os dispositivos
  ao sistema.
categories:
- Dispositivos
---

**Gerenciamento de Dispositivos**
======================================================

Antes de discutirmos sobre como os dispositivos são gerenciados, vamos dar uma olhada em alguns dispositivos. Aqui está um exemplo usando o comando `ls -l /dev`:
```bash
$ ls -l /dev
brw-rw----   1 root disk      8,   0 Dec 20 20:13 sda
crw-rw-rw-   1 root root      1,   3 Dec 20 20:13 null
srw-rw-rw-   1 root root           0 Dec 20 20:13 log
prw-r--r--   1 root root           0 Dec 20 20:13 fdata
```
As colunas são apresentadas da esquerda para a direita:

* Permissões
* Proprietário
* Grupo
* Número Maior do Dispositivo
* Número Menor do Dispositivo
* Timestamp
* Nome do Dispositivo

Observe que no comando `ls`, você pode ver o tipo do arquivo com o primeiro bit em cada linha. Os arquivos de dispositivos são denotados pelas seguintes abreviaturas:

* `c` - caractere
* `b` - bloco
* `p` - pipe
* `s` - socket

**Dispositivos Caracter**
------------------------

Esses dispositivos transferem dados, mas um caractere de volta. Você verá muitos dispositivos pseudo (/dev/null) como dispositivos caracteres, esses dispositivos não são fisicamente conectados ao computador, mas permitem ao sistema operacional maior funcionalidade.

**Dispositivos de Bloco**
----------------------

Esses dispositivos transferem dados, mas em grandes blocos de tamanho fixo. Você verá dispositivos que utilizam blocos de dados como dispositivos de bloco, como unidades de disco rígido, sistemas de arquivos, etc.

**Dispositivos de Pipe**
----------------------

Pipes nomeados permitem que dois ou mais processos comuniquem entre si. Esses dispositivos são similares a dispositivos caracteres, mas em vez de ter saída enviada para um dispositivo, é enviada para outro processo.

**Dispositivos de Socket**
-------------------------

Dispositivos de socket facilitem a comunicação entre processos, semelhantes a dispositivos de pipe, mas podem comunicar-se com muitos processos ao mesmo tempo.

**Caracterização de Dispositivos**
--------------------------------

Os dispositivos são caracterizados usando dois números: o número maior do dispositivo e o número menor do dispositivo. Você pode ver esses números no exemplo acima, separados por uma vírgula. Por exemplo, se um dispositivo tiver os números de dispositivo: 8, 0:
O número maior do dispositivo representa o driver do dispositivo que é usado. Nesse caso, 8 é o número maior comum para dispositivos de bloco `sd`. O número menor indica qual dispositivo único é isso dentro dessa classe de driver, no caso, 0 é usado para representar o primeiro dispositivo (a).

**Arquivos de Exemplo**
=====================

Você pode verificar essas informações em arquivos como [arquivo.txt](arquivo.txt) ou [exemplo.txt](exemplo.txt), que contém exemplos de dispositivos de caractere, de bloco e de pipe.

**Times e Core**
----------------

Você também pode encontrar exemplos de dispositivos em times de futebol, como [Barcelona.txt](Barcelona.txt) ou [Juventus.txt](Juventus.txt), que contém informações sobre a estrutura de times de futebol, incluindo os jogadores e as estatísticas.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/devices-02.json" aria-labelledby="devices-02-exercise-title">
  <h3 class="exercise-title" id="devices-02-exercise-title">Desafio · tipos-de-device</h3>
  <p class="exercise-prompt">Na saída ls -l /dev, qual letra inicial identifica um dispositivo de bloco?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="devices-02-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="devices-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é b.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Dispositivos](../../temas.qmd#devices)
