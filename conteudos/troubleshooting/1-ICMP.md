---
title: ICMP e mensagens de controle
pagetitle: ICMP e mensagens de controle
description: ICMP e mensagens de controle. Tutorial em português da trilha Diagnóstico
  de rede do LinuxTecLab.
categories:
- Diagnóstico de rede
---

**Protocolo de Controle de Mensagens da Internet (ICMP)**
=====================================================

O Protocolo de Controle de Mensagens da Internet (ICMP) é um componente essencial do conjunto de protocolos TCP/IP. Seu objetivo é enviar atualizações e mensagens de erro, tornando-se um protocolo extremamente útil para depurar problemas de rede, como erros na entrega de pacotes.

**Estrutura de um pacote ICMP**
-----------------------------

Cada mensagem ICMP contém campos de tipo, código e checksum. O campo de tipo define o tipo de mensagem ICMP, o código é um sub-tipo que fornece mais informações sobre a mensagem e o checksum é usado para detectar qualquer problema com a integridade da mensagem.

**Tipos de mensagens ICMP**
-------------------------

Vamos explorar alguns dos tipos de mensagens ICMP mais comuns:

* **Tipo 0 - Echo Reply**: resposta a um pedido de eco, resposta ao ping.
* **Tipo 3 - Destination Unreachable**: mensagem gerada quando um pacote não consegue chegar ao seu destino. Dentro desse tipo, há 16 valores de código que fornecem mais informações sobre por que o pacote não conseguiu chegar ao destino.
* **Tipo 8 - Echo Request**: pedido para que o roteador retorne uma resposta de eco, usado no ping.
* **Tipo 11 - Time Exceeded**: mensagem gerada quando um pacote expira antes de ser recebido, TTL expirado (usado no traceroute).

**Exemplos de códigos de Destination Unreachable**
------------------------------------------

* **Código 0 - Roteador inalcançável**: o roteador não consegue ser alcançado.
* **Código 1 - Host inalcançável**: o host não consegue ser alcançado.

Essas mensagens terão sentido quando utilizarmos ferramentas de depuração de rede. O ICMP é essencial para a operação saudável da internet, oferecendo uma forma leve e direta de comunicação sobre problemas na entrega de pacotes IP. Embora não envie dados de usuário, é vital para monitoramento, diagnóstico e controle da rede.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/troubleshooting-01.json" aria-labelledby="troubleshooting-01-exercise-title">
  <h3 class="exercise-title" id="troubleshooting-01-exercise-title">Desafio · ICMP</h3>
  <p class="exercise-prompt">Qual protocolo transporta as mensagens Echo Request e Echo Reply usadas pelo ping IPv4?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="troubleshooting-01-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="troubleshooting-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ICMP.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Diagnóstico de rede](../../temas.qmd#troubleshooting)
