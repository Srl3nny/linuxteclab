---
title: Compartilhamento de diretórios com NFS
pagetitle: Compartilhamento de diretórios com NFS
description: Compartilhamento de diretórios com NFS. Tutorial em português da trilha
  Compartilhamento do LinuxTecLab.
categories:
- Compartilhamento
---

**Como configurar um cliente NFS no Linux**
================================================================

O NFS (Network File System) continua sendo uma das formas mais comuns de compartilhamento de arquivos entre sistemas Linux em uma rede. Ele permite que um servidor disponibilize diretórios para que clientes possam acessá-los como se fossem locais.

Nesta seção, focaremos na configuração do cliente NFS, assumindo que o servidor NFS já está corretamente configurado na rede.

**Instale o pacote necessário**
------------------------------
```bash
sudo apt update
sudo apt install nfs-common
```

**Monte o compartilhamento NFS manualmente**
-----------------------------

Para montar um diretório exportado por um servidor NFS:

```bash
sudo mount -t nfs 192.168.1.100:/export/dados /mnt/dados
```
Certifique-se de que o diretório /mnt/dados exista previamente. Crie com sudo mkdir -p /mnt/dados se necessário.

**Automontagem**
----------------

Se você usa o servidor NFS com frequência e deseja mantê-lo montado permanentemente, você pode pensar em editar o arquivo `/etc/fstab`. 

```bash
192.168.1.100:/export/dados /mnt/dados nfs defaults,_netdev 0 0
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/compartilhamento-04.json" aria-labelledby="compartilhamento-04-exercise-title">
  <h3 class="exercise-title" id="compartilhamento-04-exercise-title">Desafio · NFS</h3>
  <p class="exercise-prompt">No cenário fictício, /mnt/dados já existe. Use sudo e mount para montar o compartilhamento NFS 192.0.2.10:/export/dados nesse caminho.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="compartilhamento-04-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="compartilhamento-04-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sudo mount -t nfs 192.0.2.10:/export/dados /mnt/dados.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Compartilhamento](../../temas.qmd#compartilhamento)
