---
title: Usuários e grupos no Linux
pagetitle: Usuários e grupos no Linux
description: Usuários e grupos no Linux. Tutorial em português da trilha Usuários
  e grupos do LinuxTecLab.
categories:
- Usuários e grupos
---

Em qualquer sistema operacional tradicional, existem usuários e grupos. Eles têm como único propósito gerenciar o acesso e as permissões. Quando um processo é executado, ele executará como proprietário do processo. O acesso a arquivos e a propriedade também são dependentes das permissões. Você não quer que outro usuário veja seus arquivos.

Cada usuário tem seu próprio diretório home, onde seus arquivos específicos são armazenados. Esse diretório pode ser encontrado em `/home/usuario`, mas pode variar dependendo da distribuição e configuração.

O sistema usa IDs de usuário (UID) para gerenciar os usuários. Os nomes de usuário são uma forma de associar usuários com identificação, mas o sistema identifica os usuários por suas IDs. O sistema também usa grupos para gerenciar permissões. Os grupos são apenas conjuntos de usuários com permissões definidas por esse grupo e são identificados pelo sistema com seu ID de grupo (GID).

No Linux, você também encontrará usuários além dos humanos normais que usam o sistema. Esses usuários podem ser de serviços de sistema, daemons que executam processos contínuos para manter o sistema funcionando. Um dos usuários mais importantes é o root ou superusuário. O root é o usuário mais poderoso do sistema e pode acessar qualquer arquivo e começar ou parar qualquer processo. Por essa razão, é perigoso operar como root o tempo todo, pois você pode remover arquivos críticos do sistema. Felizmente, se precisar de acesso root e um usuário tiver acesso root, ele pode executar um comando como root em vez disso usando o comando `sudo`. O comando `sudo`  é usado para executar um comando com acesso root, assim é possível dar esse acesso para vários usuários. 

Tente visualizar um arquivo protegido como `/etc/shadow`:
```bash
$ cat /etc/shadow
```
Observe como você recebe um erro de permissão negada. Olhe as permissões com:
```bash
$ ls -la /etc/shadow
-rw-r----- 1 root shadow 1134 Dec 1 11:45 /etc/shadow
```
Não vamos abordar permissões ainda, mas o que está acontecendo é que o arquivo é proprietário do root e você precisará de acesso root ou ser membro do grupo shadow para ler o conteúdo. Agora, execute o comando com `sudo`:
```bash
$ sudo cat /etc/shadow
```
Agora você poderá ver o conteúdo do arquivo, caso esteja com permissões de execução do sudo, mas antes terá que usar sua senha!

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/manipulacao-de-usuario-01.json" aria-labelledby="manipulacao-de-usuario-01-exercise-title">
  <h3 class="exercise-title" id="manipulacao-de-usuario-01-exercise-title">Desafio · Usuario e grupo</h3>
  <p class="exercise-prompt">Qual sigla identifica numericamente um usuário no Linux? Digite apenas a sigla.</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="manipulacao-de-usuario-01-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="manipulacao-de-usuario-01-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é UID.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Usuários e grupos](../../temas.qmd#manipulacao-de-usuario)
