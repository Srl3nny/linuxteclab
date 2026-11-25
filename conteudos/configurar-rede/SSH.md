---
title: SSH · acesso remoto seguro no Linux
pagetitle: SSH · acesso remoto seguro no Linux
description: SSH · acesso remoto seguro no Linux. Tutorial em português da trilha
  Configuração de rede do LinuxTecLab.
categories:
- Configuração de rede
---

# SSH — Acesso remoto seguro no Linux
O SSH (Secure Shell) é um dos serviços mais importantes em ambientes Linux, servidores, homelabs e computação científica. Ele permite acessar máquinas remotamente de forma segura, substituindo protocolos antigos e inseguros como Telnet e rlogin. No LinuxTecLab, o SSH é tratado como um serviço essencial, pois praticamente todo servidor Linux em produção é administrado remotamente via SSH.

O SSH é um protocolo de rede que permite acesso remoto ao terminal, execução de comandos à distância, cópia segura de arquivos e tunelamento de conexões. Toda a comunicação é criptografada, protegendo senhas, comandos e dados trafegados pela rede.

O funcionamento do SSH segue o modelo cliente-servidor. O cliente SSH é a máquina de onde partem as conexões, enquanto o servidor SSH (sshd) é responsável por aceitá-las. Por padrão, o serviço escuta na porta TCP 22 e utiliza criptografia assimétrica baseada em chaves públicas e privadas para autenticação e segurança.

Em distribuições baseadas em Debian e Ubuntu, a instalação do servidor SSH pode ser feita com:

```bash
sudo apt update
sudo apt install openssh-server
```

O comportamento do servidor SSH é controlado pelo arquivo de configuração **/etc/ssh/sshd_config**. Esse arquivo define portas, métodos de autenticação, usuários permitidos e diversas opções de segurança. Alterações incorretas nesse arquivo podem impedir o acesso remoto ao servidor, por isso é recomendado sempre manter uma sessão SSH aberta enquanto se testa novas configurações.

Uma das primeiras boas práticas de segurança é desabilitar o login direto do usuário root, evitando que ele seja alvo de ataques automatizados.

```bash
PermitRootLogin no
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/configurar-rede-06.json" aria-labelledby="configurar-rede-06-exercise-title">
  <h3 class="exercise-title" id="configurar-rede-06-exercise-title">Desafio · SSH</h3>
  <p class="exercise-prompt">Qual é o caminho absoluto do arquivo de configuração principal do servidor OpenSSH apresentado na aula?</p>
  <p class="exercise-note">Questão de interpretação. Digite a resposta no campo abaixo. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="configurar-rede-06-exercise-input">Sua resposta</label>
    <div class="exercise-input-row">
      <input id="configurar-rede-06-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite sua resposta" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é /etc/ssh/sshd_config.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Configuração de rede](../../temas.qmd#configurar-rede)
