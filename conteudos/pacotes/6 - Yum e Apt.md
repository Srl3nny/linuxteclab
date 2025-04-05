## Gerenciamento de Pacotes: Yum e Apt

Esses sistemas acompanham todos os recursos necessários para tornar a instalação, remoção e alteração de pacotes mais fáceis, incluindo a instalação de dependências de pacote. Dois dos gerenciadores de pacotes mais populares são o dnf e o apt. O dnf é exclusivo da família Red Hat, enquanto o apt é exclusivo da família Debian.

&nbsp;

**Instalar um pacote de um repositório**

- No Debian: `$ apt install package_name`
- No RPM: `$ dnf install package_name`

**Remover um pacote**

- No Debian: `$ apt remove package_name`
- No RPM: `$ dnf remove package_name`

**Atualizar pacotes de um repositório**

É sempre uma boa prática atualizar seus repositórios de pacotes para que estejam atualizados antes de instalar e atualizar um pacote.

- No Debian: `apt update; apt upgrade`
    - No RPM: `dnf update`

**Obter informações sobre um pacote instalado**

- No Debian: `apt show package_name`
- No RPM: `dnf info package_name`

Exemplo: Instalar o pacote `htop` no Debian:

```bash
$ sudo apt install htop
```

Exemplo: Remover o pacote `git` no RPM:

`$ sudo dnf remove git`

Nota: é importante verificar se o repositório é confiável antes de realizar as atualizações.