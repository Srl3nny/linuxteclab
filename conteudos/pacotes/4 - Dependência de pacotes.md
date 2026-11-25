---
title: Dependências de pacotes
pagetitle: Dependências de pacotes
description: Dependências de pacotes. Tutorial em português da trilha Pacotes do LinuxTecLab.
categories:
- Pacotes
---

# **Pacotes e Dependências**

Em geral, os pacotes funcionam melhor quando são acompanhados por dependências que os ajudam a trabalhar. Por exemplo, imagine um grupo de restaurantes que preparam diferentes tipos de comida, mas que obtêm seus ingredientes de uma mesma granja. A comida dos restaurantes depende da granja. Se a granja parasasse de fornecer ingredientes abruptamente, os restaurantes estariam em situação gravíssima.

Nas distribuições Linux, essas dependências são frequentemente outros pacotes ou bibliotecas compartilhadas. Bibliotecas compartilhadas são coleções de código que outros programas desejam utilizar e não desejam ter que rewriting para si mesmos. Pense novamente nos restaurantes, quantas horas cada um teria que trabalhar se também tivessem que cultivar seus próprios ingredientes? 

Apenas lembre-se de que os pacotes têm dependências para funcionar, seja essas dependências outros pacotes ou bibliotecas. Se as dependências não forem encontradas, o pacote ficará em estado quebrado e muitas vezes nem sequer será possível instalar.

&nbsp;

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/pacotes-04.json" aria-labelledby="pacotes-04-exercise-title">
  <h3 class="exercise-title" id="pacotes-04-exercise-title">Desafio · Dependência de pacotes</h3>
  <p class="exercise-prompt">Como se chama um pacote ou biblioteca necessário para outro programa funcionar? Digite dependência.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="pacotes-04-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="pacotes-04-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é dependência.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Pacotes](../../temas.qmd#pacotes)
