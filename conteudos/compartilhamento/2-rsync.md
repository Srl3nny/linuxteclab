---
title: rsync · sincronizar arquivos
pagetitle: rsync · sincronizar arquivos
description: rsync · sincronizar arquivos. Tutorial em português da trilha Compartilhamento
  do LinuxTecLab.
categories:
- Compartilhamento
---

**Rsync: um Poderoso Ferramenta de Sincronização de Arquivos**
=============================================

Se você precisa copiar dados de diversos hosts, é provável que tenha ouvido falar sobre o rsync (ou "remote synchronization"). Embora semelhante ao scp, o rsync apresenta uma diferença fundamental. Ele utiliza um algoritmo especial que compara, avançadamente, se os arquivos que está copiando já existem no destino e apenas copia as diferenças. Por exemplo, imagine que você estava copiando um arquivo quando sua conexão foi interrompida, parando o processo de cópia no meio. Em vez de ter que recopiar tudo desde o início, o rsync apenas copia os que não foram copiados.

Além disso, o rsync verifica a integridade dos arquivos que está copiando com checksums. Essas pequenas otimizações permitem uma transferência de arquivos mais flexível e tornam o rsync ideial para a sincronização de diretórios remotamente e localmente, backups de dados e transferências de dados de grande porte.

**Opções Comuns de Uso do Rsync**
--------------------------------

* `v`: saída VERBOSE.
* `r`: recursividade na pasta.
* `h`: saída legível por humanos.
* `z`: compressão para transferências mais fáceis, ótimo para conexões lentas.

**Copiar ou Sincronizar Arquivos no Mesmo Host**
--------------------------------------------

`$ rsync -zvr /meu/local/dir/a /meu/local/dir/b`

**Copiar ou Sincronizar Arquivos do Host Remoto para o Host Local**
---------------------------------------------------------

`$ rsync /local/dir bruno@192.168.15.100:/remoto/dir`

**Copiar ou Sincronizar Arquivos do Host Local para o Host Remoto**
-----------------------------------------------------------

`$ rsync bruno@192.168.15.100/remoto/dir /local/dir`

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/compartilhamento-02.json" aria-labelledby="compartilhamento-02-exercise-title">
  <h3 class="exercise-title" id="compartilhamento-02-exercise-title">Desafio · rsync</h3>
  <p class="exercise-prompt">Use rsync em modo arquivo para copiar o conteúdo de origem/ para destino/, sem apagar arquivos extras no destino.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="compartilhamento-02-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="compartilhamento-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é rsync -a origem/ destino/.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Compartilhamento](../../temas.qmd#compartilhamento)
