---
title: touch
youtube: https://youtu.be/7Zl1yXe-MB8?si=yZsZASMF07IN6PVF
pagetitle: touch · criar arquivos e atualizar datas
description: touch · criar arquivos e atualizar datas. Tutorial em português da trilha
  Linha de comando do LinuxTecLab.
categories:
- Linha de comando
---

Vamos aprender como fazer alguns arquivos. Uma maneira muito simples é usar o comando touch, touch permite criar novos arquivos vazios.

```bash
$ touch meuarquivo
```

O touch também é usado para alterar carimbos de data/hora em arquivos e diretórios existentes, na verdade essa seria a principal função, pois para criar arquivos temos meios mais eficientes. Experimente, faça um ls -l em um arquivo e anote o carimbo de data/hora, depois execute touch nesse arquivo e ele atualizará o carimbo(informação) de data/hora.

Existem muitas outras maneiras de criar arquivos que envolvem outras coisas como redirecionamento e editores de texto, mas falaremos disso em outro momento

---

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/touch.json" aria-labelledby="touch-exercise-title">
  <h3 class="exercise-title" id="touch-exercise-title">Missão 04 · Crie seu primeiro arquivo</h3>
  <p class="exercise-prompt">O arquivo notas.txt ainda não existe. Digite um comando touch para criá-lo vazio.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="touch-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="touch-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é touch notas.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
