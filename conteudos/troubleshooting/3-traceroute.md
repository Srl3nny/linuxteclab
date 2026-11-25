---
title: traceroute · investigar o caminho dos pacotes
pagetitle: traceroute · investigar o caminho dos pacotes
description: traceroute · investigar o caminho dos pacotes. Tutorial em português
  da trilha Diagnóstico de rede do LinuxTecLab.
categories:
- Diagnóstico de rede
---

**Comando de rastreamento de rotas**

O comando `traceroute` é utilizado para entender como os pacotes de dados são roteados na internet. Ele funciona enviando pacotes com valores de TTL (Time To Live) que vão aumentando, começando com 1. Quando um roteador recebe um pacote, decrementa o valor de TTL em um e, portanto, o lança. O roteador então retorna um mensagem ICMP de "Tempo Excedido" para nós. Em seguida, o próximo pacote recebe um TTL de 2, o que o permite passar pelo primeiro roteador, mas quando chega ao segundo roteador, o TTL é 0 e retorna outra mensagem ICMP de "Tempo Excedido". O `traceroute` funciona desse jeito porque, ao enviar pacotes, está construindo uma lista de roteadores que os pacotes percorrem, como se estivesse anotando o caminho, até que finalmente chegue ao seu destino e receba uma mensagem ICMP de "echo reply".

Aqui está um exemplo de um `traceroute`:

```markdown
$ traceroute www.registro.br
traceroute to registro.br (200.160.2.3), 64 hops max
  1   192.168.15.1  7,621ms  3,619ms  3,815ms 
  2   *  *  * 
  3   152.255.150.160  7,908ms  7,396ms  8,768ms 
  4   152.255.163.235  10,094ms  10,237ms  10,328ms 
  5   187.100.60.99  9,810ms  10,677ms  9,661ms 
....
```

Cada linha representa um roteador ou máquina entre mim e o meu destino. Mostra o endereço IP, e as últimas três colunas correspondem ao tempo de round-trip da comunicação de um pacote para alcançar aquele roteador. Por padrão, enviaremos três pacotes ao longo da rota.

No exemplo acima, o `traceroute` foi executado para o endereço `registro.br`. Os resultados mostram os primeiros roteadores ou máquinas que os pacotes precisaram transitar para alcançar o destino.

Podemos usar o traceroute para:

* Diagnosticar onde ocorre uma perda de pacotes.
* Verificar onde está o maior tempo de latência.
* Mapear a rota de saída da sua rede.
* Testar a conectividade internacional (ver por onde os pacotes passam até chegar a outro país, por exemplo).

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/troubleshooting-03.json" aria-labelledby="troubleshooting-03-exercise-title">
  <h3 class="exercise-title" id="troubleshooting-03-exercise-title">Desafio · traceroute</h3>
  <p class="exercise-prompt">Use traceroute para investigar os saltos até o endereço fictício 192.0.2.1.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="troubleshooting-03-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="troubleshooting-03-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é traceroute 192.0.2.1.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Diagnóstico de rede](../../temas.qmd#troubleshooting)
