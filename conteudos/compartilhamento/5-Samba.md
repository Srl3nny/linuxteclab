---
title: Compartilhamento de arquivos com Samba
pagetitle: Compartilhamento de arquivos com Samba
description: Compartilhamento de arquivos com Samba. Tutorial em português da trilha
  Compartilhamento do LinuxTecLab.
categories:
- Compartilhamento
---

**Compartilhando arquivos entre Windows e Linux com Samba**
==============================================

Desde os primórdios da computação, é necessário para as máquinas Windows compartilharem arquivos com as máquinas Linux, e foi assim que nasceu o protocolo Server Message Block (SMB). Além disso, o SMB foi posteriormente aprimorado e otimizado no formato do protocolo Common Internet File System (CIFS).

**O que é Samba?**
----------------

Samba é o conjunto de ferramentas Linux para trabalhar com CIFS no Linux. Além de compartilhar arquivos, também é possível compartilhar recursos como impressoras.

**Criar uma compartilhamento de rede com Samba**
--------------------------------------------

Vamos passar pelos passos básicos para criar uma compartilhamento de rede que pode ser acessada por uma máquina Windows:
### Instalar Samba
```
$ sudo apt update
$ sudo apt install samba
```
### Configurar o arquivo de configuração smb.conf
O arquivo de configuração do Samba é encontrado em `/etc/samba/smb.conf`. Este arquivo deve indicar quais diretórios devem ser compartilhados, quais são os permissoes de acesso e mais opções. O arquivo de configuração default vem com muitos códigos comentados que podem ser usados como exemplos para configurar sua própria configuração. Deixarei um exemplo de compartilhamento abaixo, basta copiar para o fim do arquivo smb.conf.

```
$ sudo vi /etc/samba/smb.conf
```
```bash
[Compartilhado]
   path = /srv/samba/compartilhado
   browseable = yes
   read only = no
   guest ok = no
   valid users = nome_do_usuario
```

### Criar uma senha para o Samba
```
$ sudo smbpasswd -a [nome_do_usuario]
```
### Criar um diretório compartilhado
```
sudo mkdir -p /srv/samba/compartilhado
sudo chown nome_do_usuario:nome_do_usuario /srv/samba/compartilhado
```
### Reiniciar o serviço de Samba
```
sudo systemctl restart smbd
```
### Acessar um compartilhamento de Samba a partir do Windows
Em um Windows, basta digitar a conexão de rede no prompt de iniciar: `\\HOST\sharename`.

### Acessar um compartilhamento de Samba/Linux a partir do Linux
```
$ smbclient //HOST/directory -U user
```
O pacote de Samba inclui uma ferramenta de linha de comando chamada `smbclient` que você pode usar para acessar qualquer servidor Windows ou Samba. Uma vez conectado ao compartilhamento, você pode navegar e transferir arquivos.

### Montar um compartilhamento de Samba no seu sistema
Em vez de transferir arquivos um a um, você pode simplesmente montar o compartilhamento de rede no seu sistema.

```
$ sudo apt install cifs-utils
$ sudo mount -t cifs //IP_do_servidor/Compartilhado /mnt/samba -o username=nome_do_usuario
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/compartilhamento-05.json" aria-labelledby="compartilhamento-05-exercise-title">
  <h3 class="exercise-title" id="compartilhamento-05-exercise-title">Desafio · Samba</h3>
  <p class="exercise-prompt">A conta local aluno já existe. Use sudo e smbpasswd para adicioná-la à base de usuários Samba.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="compartilhamento-05-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="compartilhamento-05-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é sudo smbpasswd -a aluno.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Compartilhamento](../../temas.qmd#compartilhamento)
