---
title: cp
youtube: https://youtu.be/7Zl1yXe-MB8?si=fb5BDL2H0AK6XXEv
pagetitle: cp · copiar arquivos e diretórios
description: cp · copiar arquivos e diretórios. Tutorial em português da trilha Linha
  de comando do LinuxTecLab.
categories:
- Linha de comando
---

Assim como copiar e colar arquivos em outros sistemas operacionais, o shell nos oferece uma maneira ainda mais simples de fazer isso, e nem precisamos do mouse para isso.

```bash
$ cp meuarquivo /home/bruno/
```

meuarquivo é o arquivo que você deseja copiar e /home/bruno é para onde você está copiando o arquivo. Você pode copiar vários arquivos e diretórios, bem como usar curingas. Um curinga é um caractere que pode substituir uma seleção baseada em padrão, proporcionando mais flexibilidade. Você pode usar curingas em vários comandos para obter mais flexibilidade.

- \* o curinga dos curingas, é usado para representar todos os caracteres únicos ou qualquer string.
- ? usado para representar um caractere.
- \[\] usado para representar qualquer caractere entre colchetes.

```bash
$ cp *.jpg /home/bruno/Imagens
```

Isso copiará todos os arquivos com extensão .jpg em seu diretório atual para o diretório Imagens. Uma opção útil é  a  -r, isso copiará recursivamente os arquivos e diretórios dentro de um diretório. Tente fazer um cp em um diretório que contém alguns arquivos no diretório Documentos. Não funcionou, não é? Bem, isso é porque você também precisará copiar os arquivos e diretórios internos com o comando -r.

Uma coisa a observar: se você copiar um arquivo para um diretório que tenha o mesmo nome de arquivo, o arquivo será substituído por tudo o que você está copiando. Isso não é legal se você tiver um arquivo que não deseja que seja substituído acidentalmente, pior ainda se não tiver backup. Você pode usar a opção -i (interativo) para avisar antes de substituir um arquivo.

```bash
$ cp -i meuarquivo /home/bruno/
```


---

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/cp.json" aria-labelledby="cp-exercise-title">
  <h3 class="exercise-title" id="cp-exercise-title">Missão 09 · Copie sem mover</h3>
  <p class="exercise-prompt">O arquivo notas.txt existe na pasta atual. Digite um comando cp para criar uma cópia chamada notas-backup.txt na mesma pasta.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="cp-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="cp-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é cp notas.txt notas-backup.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
