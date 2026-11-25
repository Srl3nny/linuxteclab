---
title: Como compartilhar arquivos entre máquinas
pagetitle: Como compartilhar arquivos entre máquinas
description: Como compartilhar arquivos entre máquinas. Tutorial em português da trilha
  Compartilhamento do LinuxTecLab.
categories:
- Compartilhamento
---

**Transferencia de dados entre máquinas na rede**
==============================================

Quando você trabalha em um ambiente comercial, é comum compartilhar redes com outros computadores. Se você precisa transferir dados de uma máquina para 
outra, pode ser mais prático usar um drive USB e copiar manualmente os arquivos. No entanto, se você trabalha com máquinas na mesma rede, a forma mais 
comum de transferir dados é por meio da compartilhamento de arquivos de rede.

**Compartilhamento de arquivos**
-----------------------------

Vamos explorar alguns métodos simples para copiar dados inclusive em máquinas diferentes na sua rede. Vamos discutir algumas copias de arquivos fáceis, e em
seguida, vamos falar sobre montar diretórios inteiros em sua máquina como um dispositivo de armazenamento separado.

**O comando scp (Secure Copy)**
-----------------------------

O comando scp (secure copy) é uma ferramenta simples e segura para compartilhar arquivos entre máquinas na mesma rede. O scp funciona da mesma maneira que
 o comando cp, mas permite copiar arquivos de uma máquina para outra, todos usando a autenticação e segurança do protocolo ssh.

**Exemplos de uso do comando scp**
---------------------------------

Copiar um arquivo da máquina local para uma máquina remota:
```bash
$ scp arq1.txt bruno@192.168.15.100:/remote/directory
```
Copiar um arquivo da máquina remota para a máquina local:
```bash
$ scp bruno@192.168.15.100:/remote/directory/arq1.txt /home/bruno
```
Copiar um diretório da máquina local para uma máquina remota:
```bash
$ scp -r /home/bruno bruno@192.168.15.100:/remote/directory
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/compartilhamento-01.json" aria-labelledby="compartilhamento-01-exercise-title">
  <h3 class="exercise-title" id="compartilhamento-01-exercise-title">Desafio · compartilhando-arquivos</h3>
  <p class="exercise-prompt">Use scp para copiar relatorio.txt ao diretório /home/aluno/ do usuário aluno no host fictício 192.0.2.10.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="compartilhamento-01-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="compartilhamento-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é scp relatorio.txt aluno@192.0.2.10:/home/aluno/.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Compartilhamento](../../temas.qmd#compartilhamento)
