---
title: Pacotes com rpm e dpkg
pagetitle: Pacotes com rpm e dpkg
description: Pacotes com rpm e dpkg. Tutorial em português da trilha Pacotes do LinuxTecLab.
categories:
- Pacotes
---

# rpm e dpkg

Pense assim, o .exe é um arquivo executável único, assim como .deb e .rpm. Você provavelmente não verá esses arquivos se usar repositórios de pacotes, mas se baixar pacotes diretamente, provavelmente terá que lidar com esses formatos. É claro que eles são exclusivos às suas distribuições, .deb para Debian-based e .rpm para Red Hat-based.

Para instalar esses pacotes diretos, você pode usar os comandos do gerenciamento de pacotes: rpm e dpkg. Esse são os ferramentas utilizadas para instalar arquivos de pacotes, no entanto, não instalam dependências de pacotes, então, se o seu pacote tiver 10 dependências, você precisaria instalar pacotes separadamente e, em seguida, suas dependências e assim por diante. Como você pode ver, isso foi um dos motivos que levaram ao surgimento dos sistemas de gerenciamento com apt.

Lembre-se de que haverá inúmeras vezes em que precisará instalar, consultar ou verificar um pacote com uma dessas ferramentas, então, lembre sempre esses comandos.

## **Install**, Consulta e Remoção de Pacotes

### Install e Remove um Pacote

**Debian**:

```
$ dpkg -i some_deb_package.deb
```

```
$ dpkg -r some_deb_package.deb
```

No Debian, `-i` significa install (instalar) e `-r` significa remove (remover).

**RPM**:

```
$ rpm -i some_rpm_package.rpm
```

```
$ rpm -e some_rpm_package.rpm
```

No RPM, `-i` significa install (instalar) e `-e` significa erase (remover).

### Listar Pacotes Instalados

**Debian**:

```
$ dpkg -l
```

`-l` significa list (lista).

**RPM**:

```
$ rpm -qa
```

`-q` significa query (consulta) e `a` significa all (todos).

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/pacotes-05.json" aria-labelledby="pacotes-05-exercise-title">
  <h3 class="exercise-title" id="pacotes-05-exercise-title">Desafio · RPM e dpkg</h3>
  <p class="exercise-prompt">Use dpkg para listar os pacotes instalados no formato longo.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="pacotes-05-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="pacotes-05-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é dpkg -l.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Pacotes](../../temas.qmd#pacotes)
