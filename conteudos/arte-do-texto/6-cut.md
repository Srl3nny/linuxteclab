---
title: cut
youtube: https://youtu.be/_7kDsfHoz4k?si=vd7RTy57BcISoW6h
pagetitle: cut · extrair campos de texto
description: cut · extrair campos de texto. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

Aprenderemos alguns comandos úteis que você pode usar para processar texto. Antes de começarmos, vamos criar um arquivo com o qual trabalharemos. 

```bash
$ echo 'O Linux é rápido; o Linux é seguro' > exemplo.txt
```

O comando que aprenderemos é o comando cut. Extrai partes de texto de um arquivo.

Para extrair o conteúdo por uma lista de caracteres:

```bash
   $ cut -c 5 exemplo.txt
```

&nbsp;Isso mostra o quinto caractere em cada linha do arquivo. Neste caso é “n", observe que o espaço também conta como caractere.

Para extrair o conteúdo de um campo, precisaremos fazer uma pequena modificação. O sinalizador -f ou campo corta o texto com base nos campos; por padrão, ele usa TABs como delimitadores, portanto, tudo separado por uma TAB é considerado um campo. 

Você pode combinar o sinalizador de campo com o sinalizador de delimitador para extrair o conteúdo por um delimitador personalizado, assim o -d indica o delimitador que por padrão é o TAB:

```bash
$ cut -f 1 -d ";" exemplo.txt
```

Você pegará o primeiro campo -f 1, e usará como delimitador o caracter ";" -d ";". Deverá ver no terminal "O Linux é rápido".
E caso use -f 2, terá o conteúdo do segundo campo "O Linux é seguro"

&nbsp;

---

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-06.json" aria-labelledby="arte-do-texto-06-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-06-exercise-title">Desafio · cut</h3>
  <p class="exercise-prompt">O arquivo dados.txt contém campos separados por ponto e vírgula. Use cut para mostrar o primeiro campo.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-06-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-06-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é cut -d &quot;;&quot; -f 1 dados.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
