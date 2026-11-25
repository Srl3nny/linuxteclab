---
title: Servir arquivos por HTTP com Python
pagetitle: Servir arquivos por HTTP com Python
description: Servir arquivos por HTTP com Python. Tutorial em português da trilha
  Compartilhamento do LinuxTecLab.
categories:
- Compartilhamento
---

**Servidor de Arquivos Local com Python**
================================================

O Python tem uma ferramenta muito útil para servir arquivos sob demanda através do protocolo HTTP. Isso é muito útil se você quiser criar uma compartilhamento de rede rápido que outras máquinas em sua rede possam acessar. Para fazê-lo, simplemente vá ao diretório que deseja compartilhar e execute:
```
$ sudo python3 -m http.server
[sudo] senha para bruno: 
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```
Portanto, obtenha a endereço IP da máquina que você executou este comando e, em outra máquina, acesse-o no navegador com: http://IP_ADDRESS:8000. Na sua própria máquina, você pode visualizar os arquivos disponíveis digitando: http://localhost:8000 no navegador.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/compartilhamento-03.json" aria-labelledby="compartilhamento-03-exercise-title">
  <h3 class="exercise-title" id="compartilhamento-03-exercise-title">Desafio · SimpleHTTPServer</h3>
  <p class="exercise-prompt">Use Python 3 para servir a pasta atual por HTTP na porta 8000, escutando apenas em 127.0.0.1.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="compartilhamento-03-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="compartilhamento-03-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é python3 -m http.server 8000 --bind 127.0.0.1.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Compartilhamento](../../temas.qmd#compartilhamento)
