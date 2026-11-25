---
title: dhclient e configuração por DHCP
pagetitle: dhclient e configuração por DHCP
description: dhclient e configuração por DHCP. Tutorial em português da trilha Configuração
  de rede do LinuxTecLab.
categories:
- Configuração de rede
---

**Configuração de rede com DHCP**
===============================

 Sobre DHCP e em geral, você nunca precisará configurar manualmente seus endereços IP, máscaras de subrede, etc. Em vez disso, você utilizará DHCP! O `dhclient` é executado ao boot e obtém uma lista de interfaces de rede a partir do arquivo `dhclient.conf`. Para cada interface listada, ele tenta configurar a interface utilizando o protocolo DHCP.

O arquivo `dhclient.leases` é usado pelo `dhclient` para manter um registro de leases. Após ler o arquivo `dhclient.conf`, o arquivo `dhclient.leases` é lido para informar ao `dhclient` quais leases foram atribuídas anteriormente.

Para obter um endereço IP novo:

```
$ sudo dhclient
```

Nos sistemas mais modernos (como Ubuntu com systemd), o dhclient pode ser substituído por outros gerenciadores de rede.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/configurar-rede-03.json" aria-labelledby="configurar-rede-03-exercise-title">
  <h3 class="exercise-title" id="configurar-rede-03-exercise-title">Desafio · dhclient</h3>
  <p class="exercise-prompt">No cenário, dhclient está instalado. Use sudo para solicitar configuração DHCP na interface eth0.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="configurar-rede-03-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="configurar-rede-03-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sudo dhclient eth0.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Configuração de rede](../../temas.qmd#configurar-rede)
