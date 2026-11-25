---
title: Como consultar e configurar rotas
pagetitle: Como consultar e configurar rotas
description: Como consultar e configurar rotas. Tutorial em português da trilha Configuração
  de rede do LinuxTecLab.
categories:
- Configuração de rede
---

**Criando rotas**

Já discutimos como visualizar as nossas tabelas de rotas com o comando `route`. Se você deseja adicionar ou remover rotas, pode fazê-lo manualmente.

**Adicionando uma nova rota**

Para adicionar uma nova rota, use o seguinte comando:
```bash
$ sudo route add -net 192.168.2.1/23 gw 10.11.12.3
```
**Removendo uma rota**

Para remover uma rota, use o seguinte comando:
```bash
$ sudo route del -net 192.168.2.1/23
```
**Adicionando um rota default**

Para adicionar uma rota padrão, aquela rota que se o destino do pacote não está na sua rede local, o sistema envia para o gateway padrão.
```bash
sudo route add default gw 192.168.1.1 eth0
```

Para remover essa mesma rota:
```bash
sudo route del default gw 192.168.1.1 eth0
```

**ALTERANDO ROTAS COM O COMMANDO IP**

Alternativamente, você também pode realizar essas alterações com o comando `ip`:
**Adicionando uma rota**

Para adicionar uma nova rota, use o seguinte comando:
```bash
$ ip route add 192.168.2.1/23 via 10.11.12.3
```
**Removendo uma rota**

Para remover uma rota, use um dos seguintes comandos:
```bash
$ ip route delete 192.168.2.1/23 via 10.11.12.3
```
ou
```bash
$ ip route delete 192.168.2.1/23
```

E para adicionar ou remover uma rota default com o comando IP:

```bash
sudo ip route add default via 192.168.1.1 dev eth0
sudo ip route del default via 192.168.1.1 dev eth0
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/configurar-rede-02.json" aria-labelledby="configurar-rede-02-exercise-title">
  <h3 class="exercise-title" id="configurar-rede-02-exercise-title">Desafio · route</h3>
  <p class="exercise-prompt">Use ip para consultar a tabela de rotas IPv4 principal.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="configurar-rede-02-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="configurar-rede-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é ip route show.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Configuração de rede](../../temas.qmd#configurar-rede)
