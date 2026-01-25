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

Uma das primeiras boas práticas de segurança é desabilitar o login direto do usuário root, evitando que ele seja alvo de ataques automatizados:

```bash
PermitRootLogin no
```



