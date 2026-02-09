**Instalando um pacote em forma de código-fonte**

Muitas vezes, você encontrará um pacote obscuro que apenas vem em forma de código-fonte puro. Nesse caso, você precisará usar alguns comandos para converter esse código-fonte em pacote compilável e instalável em seu sistema.

**Passo 1: Instalar ferramentas de compilação**

Primeiramente, você precisará instalar ferramentas para compilar código-fonte. Use o comando a seguir:

```bash
$ sudo apt install build-essential
```

**Passo 2: EXTRAIR conteúdo do pacote**

Extrai o conteúdo do pacote em forma de arquivo `.tar.gz`. Use o comando a seguir:

```bash
$ tar -xzvf package.tar.gz
```

**Ler README e INSTALL**

Antes de começar a instalar o pacote, certifique-se de ler o arquivo README ou INSTALL dentro do pacote. Algumas vezes, há instruções de instalação específicas.

**Compilar o pacote**

O método de compilação utilizado pelo desenvolvedor pode variar. No entanto, a maioria dos pacotes é compilável usando o método de compilação básica. Nessa seção, vamos discutir como compilar usando o método `make`.

**Configure a compilação**

Dentro do conteúdo do pacote, há um script de configuração que verifica as dependências do sistema e se você estiver faltando alguma coisa, você verá um erro e precisará resolver essas dependências.

Use o comando a seguir:

```bash
$ ./configure
```

O caractere `'./'` permite executar um script no diretório atual.

**Compilar o pacote**

Em seguida, compilar o pacote usando o comando seguinte:

```bash
$ make
```

O comando `make` analisa o arquivo `Makefile` e constrói o software de acordo com as regras definidas nesse arquivo.

**Instalar o pacote**

Para instalar o pacote, use o comando a seguir:

```bash
$ sudo make install
```

Essa comandos copia os arquivos corretos para as localizações corretas no seu computador.

**Dessinstalar o pacote**

Se você quiser remover o pacote, use o comando a seguir:

```bash
$ sudo make uninstall
```

No entanto, é importante ter cuidado ao usar o comando `make install`, pois você pode não estar ciente do que está acontecendo em segundo plano. Em vez disso, use o comando `checkinstall`, que constrói um arquivo `.deb` para você e o instala facilmente.

Use o comando a seguir:

```bash
$ sudo checkinstall
```

Esse comando executará o comando `make install` e construirá um arquivo `.deb` e o instalará. Isso torna mais fácil remover o pacote mais tarde.