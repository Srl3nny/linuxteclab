---
title: Como identificar interfaces de rede
pagetitle: Como identificar interfaces de rede
description: Como identificar interfaces de rede. Tutorial em português da trilha
  Configuração de rede do LinuxTecLab.
categories:
- Configuração de rede
---

**Interface de Rede e Comandos ifconfig e ip**

A interface de rede é a conexão entre o lado de software e o lado de hardware da rede, ligando o kernel. podemos ver um exemplo disso:

```
$ ifconfig -a
```

O comando `ifconfig` permite configure nossas interfaces de rede, caso contrário, o kernel e os drivers de dispositivo não saberiam se falar. Ele é executado no bootup e configura nossas interfaces a partir de arquivos de configuração, mas podemos também modificá-las manualmente.

O output do comando `ifconfig` mostra o nome da interface na coluna da esquerda e as informações detalhadas na direita. As interfaces mais comuns são eth0 (interface Ethernet padrão), wlan0 (interface wireless) e lo (interface de loopback).

O loopback é uma interface que representa seu computador, simplesmente voltando você de volta a si mesmo. É útil para depuração ou para conectar-se a servidores rodando localmente.

O status das interfaces pode ser up ou down. Se quiser "desligar" uma interface, você pode setá-la pra baixar. Os campos que você provavelmente verá mais frequentemente no output do ifconfig são o HWaddr (endereço MAC da interface), inet address (endereço IPv4 da interface) e inet6 (endereço IPv6 da interface). Além disso, você pode ver a máscara de sub-rede e o endereço de broadcast.

Você também pode verificar informações de interface em `/etc/network/interfaces`.

**Criar interface e mudar seu status**

```
$ ifconfig eth0 192.168.2.1 netmask 255.255.255.0 up
```

Isso atribui um endereço IP e uma máscara de sub-rede à interface eth0 e também a coloca up.

**Trazer interface up ou down**

```
$ ifup eth0
$ ifdown eth0
```

**Comando ip**

O comando `ip` também permite manipular a pilha de rede de um sistema. Dependendo da distribuição que você estiver usando, é possível que seja o método preferido para manipular seus ajustes de rede.

Aqui estão alguns exemplos de seu uso:

**Mostrar informações de interface para todas as interfaces**

```
$ ip link show
```

**Mostrar estatísticas de uma interface**

```
$ ip -s link show eth0
```

**Mostrar endereços IP alocados às interfaces**

```
$ ip address show
```

**Trazer interfaces up ou down**

```
$ ip link set eth0 up
$ ip link set eth0 down
```

**Adicionar um endereço IP a uma interface**

```
$ ip address add 192.168.1.1/24 dev eth0
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/configurar-rede-01.json" aria-labelledby="configurar-rede-01-exercise-title">
  <h3 class="exercise-title" id="configurar-rede-01-exercise-title">Desafio · interfaces-de-rede</h3>
  <p class="exercise-prompt">Use ip para consultar todas as interfaces de rede, sem alterar a configuração.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="configurar-rede-01-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="configurar-rede-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ip link show.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Configuração de rede](../../temas.qmd#configurar-rede)
