---
title: Gerenciar conexões com NetworkManager
pagetitle: Gerenciar conexões com NetworkManager
description: Gerenciar conexões com NetworkManager. Tutorial em português da trilha
  Configuração de rede do LinuxTecLab.
categories:
- Configuração de rede
---

**Gerenciando a Rede com NetworkManager**

Claro que, se deseja que o networking do seu sistema esteja sempre online, há ferramenta pronta para isso. A maioria das distribuições utiliza o daemon NetworkManager para configurar as redes automaticamente.Você pode notar o NetworkManager na forma de um applet em sua barra de tarefa do desktop, se estiver usando uma interface gráfica. Como você pode ver, ele gerencia a informação de hardware e conexões da rede. Por exemplo, ao iniciar, o NetworkManager irá coletar informações de hardware de rede, procurar conexões wireless, cabeadas, etc. e as activará.

Além disso, há ferramentas de linha de comando para interagir com o NetworkManager:

### nmcli

ferramenta de linha de comando para interagir com o NetworkManager.

Por exemplo, para listar conexões.
```bash
nmcli connection show
```
Para ativar uma interface.
```bash
nmcli radio wifi on
```

### nmtui

Interface de terminal baseada em texto (menu interativo).

### NetworkManager e o systemd

O NetworkManager roda como serviço:

```bash
sudo systemctl status NetworkManager
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/configurar-rede-04.json" aria-labelledby="configurar-rede-04-exercise-title">
  <h3 class="exercise-title" id="configurar-rede-04-exercise-title">Desafio · NetworkManager</h3>
  <p class="exercise-prompt">Use nmcli para listar os perfis de conexão do NetworkManager.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="configurar-rede-04-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="configurar-rede-04-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é nmcli connection show.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Configuração de rede](../../temas.qmd#configurar-rede)
