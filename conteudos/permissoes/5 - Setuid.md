---
title: Como funciona o bit setuid
pagetitle: Como funciona o bit setuid
description: Como funciona o bit setuid. Tutorial em português da trilha Permissões
  do LinuxTecLab.
categories:
- Permissões
---

Existem muitos casos em que usuários normais precisam de acesso avançado para executar determinadas tarefas. O administrador do sistema não pode estar sempre disponível para digitar a senha de root toda vez que um usuário necessite de acesso a um arquivo protegido, então há bits de permissão de arquivos especiais para permitir esse comportamento. O Set User ID (SUID) permite a um usuário executar um programa como o proprietário do arquivo do programa, em vez de como eles mesmos.

Vamos ver um exemplo:  
Suponha que eu queira alterar minha senha, simples, certo? Eu apenas uso o comando passwd:

```
$ passwd
```

O que o comando de senha está fazendo? Está modificando alguns arquivos, mas o mais importante é modificar o arquivo /etc/shadow. Vamos olhar para esse arquivo por um segundo:

```
$ ls -l /etc/shadow
-rw-r----- 1 root shadow 1134 1 de dez 11:45 /etc/shadow
```

Oh, espere um minuto! Esse arquivo é propriedade de root? Como é possível que possamos modificar um arquivo propriedade de root?  
Vamos olhar para outro conjunto de permissões, essa vez do comando que executamos:

```
$ ls -l /usr/bin/passwd
-rwsr-xr-x 1 root root 47032 1 de dez 11:45 /usr/bin/passwd
```

Você notará um novo bit de permissão aqui, o SUID (s). Quando um arquivo tem esse bit de permissão setado, permite que os usuários que executaram o programa obtêm as permissões do proprietário do arquivo, bem como a permissão de execução, no caso, root. Portanto, enquanto um usuário está executando o comando de senha, eles estão executando como root.  
É por isso que podemos acessar um arquivo protegido como /etc/shadow quando executamos o comando de senha. Se você removesse esse bit, você veria que não seria possível modificar o arquivo /etc/shadow e, portanto, alterar sua senha.

## **Modificando SUID**

Já que as permissões regulares, há dois jeitos de modificar as permissões SUID.  
**Modo simbólico:**  
`$ sudo chmod u+s myfile`  
**Modo numérico:**  
`$ sudo chmod 4755 myfile`

Como você pode ver, o SUID é denotado por um 4 e prefixado ao conjunto de permissões. Você pode ver o SUID denotado como um S maiúsculo, o que significa que ele ainda faz a mesma coisa, mas não tem permissões de execução.

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/permissoes-05.json" aria-labelledby="permissoes-05-exercise-title">
  <h3 class="exercise-title" id="permissoes-05-exercise-title">Desafio · Setuid</h3>
  <p class="exercise-prompt">Em -rwsr-xr-x, qual bit especial é indicado pelo s na posição de execução do proprietário?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="permissoes-05-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="permissoes-05-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é setuid.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Permissões](../../temas.qmd#permissoes)
