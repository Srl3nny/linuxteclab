---
title: Gerenciar pacotes com yum e apt
pagetitle: Gerenciar pacotes com yum e apt
description: Gerenciar pacotes com yum e apt. Tutorial em português da trilha Pacotes
  do LinuxTecLab.
categories:
- Pacotes
---

## Gerenciamento de Pacotes: Yum e Apt

Esses sistemas acompanham todos os recursos necessários para tornar a instalação, remoção e alteração de pacotes mais fáceis, incluindo a instalação de dependências de pacote. Dois dos gerenciadores de pacotes mais populares são o dnf e o apt. O dnf é exclusivo da família Red Hat, enquanto o apt é exclusivo da família Debian.

&nbsp;

**Instalar um pacote de um repositório**

- No Debian: `$ apt install package_name`
- No RPM: `$ dnf install package_name`

**Remover um pacote**

- No Debian: `$ apt remove package_name`
- No RPM: `$ dnf remove package_name`

**Atualizar pacotes de um repositório**

É sempre uma boa prática atualizar seus repositórios de pacotes para que estejam atualizados antes de instalar e atualizar um pacote.

- No Debian: `apt update; apt upgrade`
    - No RPM: `dnf update`

**Obter informações sobre um pacote instalado**

- No Debian: `apt show package_name`
- No RPM: `dnf info package_name`

Exemplo: Instalar o pacote `htop` no Debian:

```bash
$ sudo apt install htop
```

Exemplo: Remover o pacote `git` no RPM:

`$ sudo dnf remove git`

Nota: é importante verificar se o repositório é confiável antes de realizar as atualizações.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/pacotes-06.json" aria-labelledby="pacotes-06-exercise-title">
  <h3 class="exercise-title" id="pacotes-06-exercise-title">Desafio · Yum e Apt</h3>
  <p class="exercise-prompt">Em Debian ou Ubuntu, use sudo e apt para instalar htop dos repositórios configurados.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="pacotes-06-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="pacotes-06-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sudo apt install htop.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Pacotes](../../temas.qmd#pacotes)
