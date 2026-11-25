---
title: awk · processar campos de texto
pagetitle: awk · processar campos de texto
description: awk · processar campos de texto. Tutorial em português da trilha Texto
  e filtros do LinuxTecLab.
categories:
- Texto e filtros
---

# awk — Processamento de Texto Orientado a Dados

## 📌 O que é o awk
O **awk** é uma linguagem e ferramenta do Linux voltada para **processamento de texto estruturado**, especialmente quando os dados estão organizados em **linhas e colunas**.

Ele é amplamente utilizado para:
- Extrair campos
- Filtrar dados
- Calcular valores
- Gerar relatórios
- Pós-processar resultados de simulações

## 🎯 Quando usar o awk
Use o `awk` quando você precisar:
- Trabalhar com arquivos tabulares (`CSV`, `TSV`, `.dat`)
- Processar logs numéricos
- Extrair colunas específicas
- Fazer cálculos em fluxo
- Criar pequenos relatórios sem usar Python ou R

O awk segue o modelo padrão { ação }, onde para cada linha o padão é testado e sendo verdadeiro  é executada a ação.

Para entender melhor vamos usar o arquivo abaixo como exemplo, onde iremos executar o awk:


```null
S1 22.5 45
S2 24.1 50
S3 21.9 42
S4 25.3 55
S5 23.8 48
```

Dado que o arquivo é separado por espaços (campos da linha), o comando “print” servirá para exibir algo na tela. A variáveil $0 imprime todo o conteúdo, ou cada coluna do texto:


```bash
awk '{print $0}' awk.txt
```

Podemos imprimir a primeira coluna de cada linha.


```bash
awk '{print $1}' awk.txt
```

Ou podemos imprimir mais de 1 coluna.


```bash
awk '{print $1,$3}' awk.txt
```

Podemos usar texto também.

```bash
awk '{print "Sensor " $1 " marcou temp de " $2 "C e umidade " $3 }' awk.txt
```

E caso o separador de campos (FS - Field Separator) não seja o espaço, podemos alterar o com a opção -F. Se o arquivo estivesse como segue:


```null
S1;22.5;45
S2;24.1;50
S3;21.9;42
S4;25.3;55
S5;23.8;48
```
```bash
awk -F ';' '{print $1,$3}' awk.txt
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/arte-do-texto-15.json" aria-labelledby="arte-do-texto-15-exercise-title">
  <h3 class="exercise-title" id="arte-do-texto-15-exercise-title">Desafio · awk</h3>
  <p class="exercise-prompt">Use awk para imprimir a primeira coluna de dados.txt, cujos campos são separados por espaços.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="arte-do-texto-15-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="arte-do-texto-15-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é awk &#x27;{print $1}&#x27; dados.txt.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Texto e filtros](../../temas.qmd#arte-do-texto)
