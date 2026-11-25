---
title: ARP e resolução de endereços
pagetitle: ARP e resolução de endereços
description: ARP e resolução de endereços. Tutorial em português da trilha Configuração
  de rede do LinuxTecLab.
categories:
- Configuração de rede
---

**Como o ARP cache funciona**

Lembre-se de quando procuramos uma endereço MAC com ARP? Primeiramente, o sistema verifica o cache ARP localmente armazenado no nosso sistema. Você pode visualizar esse cache execute o comando `arp`:

```
$ arp
Endereço            Tipo HW   Endereço HW   Flags   Máscara        Interface
192.168.22.1       ether   00:12:24:fc:12:cc   C          eth0
192.168.22.254     ether   00:12:45:f2:84:64   C          eth0
```

O cache ARP está vazio quando a máquina é inicializada, e é populado à medida que os pacotes são enviados para outros servidores. Se enviamos um pacote para um destino que não está no cache ARP, o que acontece é o seguinte:

* O host de origem cria o quadro Ethernet com um pacote de solicitação ARP.
* O host de origem faz im broadcast com esse quadro para toda a rede.
* Se algum dos hosts na rede tiver o endereço correto, ele enviará um pacote de resposta e quadro contendo o endereço MAC
* O host de origem adiciona a correspondência IP-MAC ao cache ARP e, em seguida, prossegue com a entrega do pacote

Você também pode visualizar seu cache ARP com o comando `ip neighbor show`:

```
$ ip neighbour show
```

Notícias adicionais

**Arp Cache** é uma área de armazenamento na memória RAM que armazena as correspondências entre os endereços IP e as respectivas mídias [1] (Mac Address). Essa cache é populada automaticamente quando um pacote é enviado para um host que não está presente na cache.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/configurar-rede-05.json" aria-labelledby="configurar-rede-05-exercise-title">
  <h3 class="exercise-title" id="configurar-rede-05-exercise-title">Desafio · arp</h3>
  <p class="exercise-prompt">Use ip para mostrar a tabela de vizinhos da rede.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="configurar-rede-05-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="configurar-rede-05-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ip neighbour show.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Configuração de rede](../../temas.qmd#configurar-rede)
