---
title: Repositórios de pacotes
pagetitle: Repositórios de pacotes
description: Repositórios de pacotes. Tutorial em português da trilha Pacotes do LinuxTecLab.
categories:
- Pacotes
---

# **Compreendendo os Repositórios de Pacotes**

Você provavelmente já se perguntou como os pacotes que são subidos na internet acabam chegando nos seus computadores? Você vai a página de download de cada pacote que deseja e clica em download e instalação? Bem, é possível fazer isso, mas há algo melhor chamado repositórios de pacotes. Repositórios são simplesmente locais de armazenamento centralizados para pacotes. Existem montes de repositórios que guardam uma diversidade de pacotes e, melhor ainda, eles estão todos disponíveis na internet.

Para exemplo, imagine que eu quero instalar o software fictício linuxteclab no meu computador. linuxteclab gerencia seus próprios repositórios para pacotes. Ele hospeda esse repositório no endereço-fonte: [http://download.linuxteclab.com.br/linux/deb/](http://download.widgets/linux/deb/)

Em vez de ir à sua página inicial para baixar o pacote diretamente, você pode instruir o seu computador a encontrar o software no endereço do link acima.  
Sua distribuição já vem com fontes pré-aulilizadas para obter pacotes e isso é como ela instala todos os pacotes básicos que você vê em seu sistema. Em um sistema Debian, esse arquivo de fontes é o `/etc/apt/sources.list`. O seu computador saberá buscar lá e verificar se há repositórios fontes adicionais.

**Exemplo**:  
Você pode adicionar fontes adicionais em seu arquivo `/etc/apt/sources.list` para obter pacotes personalizados. Por exemplo, você pode adicionar a seguinte linha para obter o repositório do Ubuntu:

```bash
deb http://archive.ubuntu.com/ubuntu xenial main restricted
```

Isso permitirá que você obtenha pacotes do Ubuntu Xenial naquela fonte.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/pacotes-02.json" aria-labelledby="pacotes-02-exercise-title">
  <h3 class="exercise-title" id="pacotes-02-exercise-title">Desafio · Repositórios</h3>
  <p class="exercise-prompt">Como se chama a fonte de pacotes consultada pelo gerenciador? Digite repositório.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="pacotes-02-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="pacotes-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é repositório.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Pacotes](../../temas.qmd#pacotes)
