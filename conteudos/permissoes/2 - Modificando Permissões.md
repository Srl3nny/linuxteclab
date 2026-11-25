---
title: chmod · modificar permissões
pagetitle: chmod · modificar permissões
description: chmod · modificar permissões. Tutorial em português da trilha Permissões
  do LinuxTecLab.
categories:
- Permissões
---

Alterar permissões é um processo relativamente simples com o comando `chmod`. Primeiramente, escolha qual conjunto de permissões deseja alterar, usuário, grupo ou outros. Você pode adicionar ou remover permissões com um "+" ou "-", vamos dar uma olhada em alguns exemplos.

**Adicionar uma bit de permissão a um arquivo**
```bash
$ chmod u+x file
```
O comando acima se lê assim: "altere as permissões do arquivo file adicionando o bit de permissão executável ao conjunto de permissões do usuário". Agora, o usuário tem permissão executável para este arquivo!

**Remover uma bit de permissão a um arquivo**
```bash
$ chmod u-x myfile
```
**Adicionar múltiplas bits de permissão a um arquivo**
```bash
$ chmod ug+w
```
Há outra forma de alterar permissões usando o formato numérico. Essa maneira permite alterar todas as permissões de uma só vez. Em vez de usar "r", "w" ou "x" para representar permissões, você utilizará uma representação numérica para um conjunto de permissões único. Agora, não é necessário especificar o grupo com "g" ou o usuário com "u".

As representações numéricas estão abaixo:

* 4: permissão de leitura
* 2: permissão de escrita
* 1: permissão de execução

Vamos dar uma olhada em um exemplo:
```bash
$ chmod 755 file
```
Preste atenção, o que estamos dando a permissões para este arquivo? Vamos quebrar isso, portanto, agora 755 abrange as permissões para todos os conjuntos. O primeiro número (7) representa as permissões do usuário, o segundo número (5) representa as permissões do grupo e o último número (5) representa as permissões de outros.
Lembre-se de que agora estamos combinando todas as permissões em um número único, portanto, você precisará fazer um pouco de matemática.
7 = 4 + 2 + 1, assim 7 é as permissões do usuário e ele tem permissão de leitura, escrita e execução
5 = 4 + 1, o grupo tem permissão de leitura e execução
5 = 4 + 1, e todos os outros usuários tem permissão de leitura e execução

Lembre-se de que não é uma boa ideia mudar as permissões aleatoriamente, pois isso pode expor um arquivo sensível para que todos possam modificá-lo. No entanto, se você precisar alterar as permissões, apenas tome cuidado ao usar o comando `chmod`.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-02.json" aria-labelledby="permissoes-02-exercise-title">
  <h3 class="exercise-title" id="permissoes-02-exercise-title">Desafio · Modificando Permissões</h3>
  <p class="exercise-prompt">Use chmod para adicionar execução apenas ao proprietário de script.sh, preservando os demais bits.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-02-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="permissoes-02-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é chmod u+x script.sh.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
