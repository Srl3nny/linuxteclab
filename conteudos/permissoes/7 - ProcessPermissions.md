---
title: Permissões de processos no Linux
pagetitle: Permissões de processos no Linux
description: Permissões de processos no Linux. Tutorial em português da trilha Permissões
  do LinuxTecLab.
categories:
- Permissões
---

##*Processos e Permissões em Linux*

Vamos abordar um pouco mais sobre permissões de processos em Linux. Lembrando que quando você executa o comando `passwd` com o bit de permissão SUID habilitado, o programa é executado como root? Isso é verdade, mas isso significa que, como você está temporariamente como root, você pode modificar as senhas de outros usuários? Não, felizmente não!

Essa é porque do muitos IDs de usuário (UIDs) que o Linux implementa. Existem três UIDs associados a cada processo:

- Quando você inicia um processo, ele é executado com as mesmas permissões do usuário ou grupo que o executou, isso é conhecido como **effective user ID**. Este UID é usado para conceder direitos de acesso a um processo. Então, naturalmente, se Bob executasse o comando touch, o processo seria executado como ele e quaisquer arquivos que ele criasse estariam sob sua propriedade.
- Há outro UID, chamado de **real user ID**, este é o ID do usuário que iniciou o processo. Eles são usados ​​para rastrear quem é o usuário que iniciou o processo.
- Um último UID é o **saved user ID**, isso permite que um processo alterne entre o effective e o real, vice-versa. Isso é útil porque não queremos que nosso processo seja executado com privilégios elevados o tempo todo, é apenas uma boa prática usar privilégios especiais em momentos específicos.

Agora, vamos juntar essas peças todas juntas, olhando para o comando `passwd` novamente.

Quando você executa o comando `passwd`, sua effective UID é sua ID de usuário, por exemplo, 500 por enquanto. No entanto, o comando `passwd` tem o bit de permissão SUID habilitado, portanto, quando você o executa, sua effective UID é agora 0 (a UID de root). Agora, esse programa pode acessar arquivos como root.

Imagine que você deseja modificar a senha da Sally, que tem uma UID de 600. Bem, você não vai ter sorte, felizmente, o processo também tem sua UID real nesse caso, 500. Ele sabe que sua UID é 500 e, portanto, você não pode modificar a senha da UID de 600. (Claro que isso é sempre contornado se você for superusuário em uma máquina e pode controlar e alterar tudo.)

Na maioria do tempo, a UID real e a UID effective são as mesmas, mas em casos como o comando `passwd`, elas mudarão.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-07.json" aria-labelledby="permissoes-07-exercise-title">
  <h3 class="exercise-title" id="permissoes-07-exercise-title">Desafio · ProcessPermissions</h3>
  <p class="exercise-prompt">Qual sigla identifica o UID efetivo de um processo, usado em decisões de permissão?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-07-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="permissoes-07-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é EUID.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
