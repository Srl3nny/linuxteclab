Seu sistema computacional é composto por muitos pacotes, como navegadores de internet, editores de texto, reprodutores de mídia, etc. Esses pacotes são gerenciados por gerenciadores de pacotes, que instalam e mantém o software no seu sistema. No entanto, nem todos os pacotes são instalados via gerenciadores de pacotes. É comum instalar pacotes diretamente a partir do seu código fonte. Mas a maioria do tempo você usará um gerenciador de pacotes para instalar software (apt, dnf..).

Os pacotes mais comuns são do tipo Debian (.deb) e Red Hat (.rpm). Os pacotes do estilo Debian são usados nas distribuições como Debian, Ubuntu, LinuxMint, etc. Já os pacotes do estilo Red Hat são vistos nas distribuições Red Hat Enterprise Linux, Fedora, CentOS, Rocky etc.

**O que são Pacotes?**

Você pode conhecê-los como Chrome, Photoshop, etc. Mas eles realmente são apenas muitos arquivos compilados em um único arquivo. Os desenvolvedores (ou em algum caso, uma pessoa única) que escrevem esse software são conhecidos como fornecedores upstream. Eles compilam seu código e criam um manual sobre como instalar o software. Esses fornecedores upstream trabalham para desenvolver novas funcionalidades e atualizar o software existente. Quando estiverem prontos para liberar para o mundo, eles enviam o pacote para os mantenedores de pacotes, que são responsáveis por distribuir o software em forma de pacotes.

**Arquivo de Exemplo**

Se você quiser explorar um pacote Debian, por exemplo, você pode baixar o arquivo `chromium-browser_91.0.4472.114-1_amd64.deb` e instalar o navegador Chromium.

**Outro Exemplo**

Se você quiser olhar o código fonte do pacote RPM, você pode fazer isso baixando o arquivo `wget-1.21.1-5.2.amd64.rpm` e examinando as informações sobre a instalação.

Lembre-se de que esses são apenas exemplos, e os pacotes podem ter nomes e extensões diferentes, dependendo do tipo de pacote e da distribuição utilizada.