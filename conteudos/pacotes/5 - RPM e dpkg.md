# rpm e dpkg

Pense assim, o .exe é um arquivo executável único, assim como .deb e .rpm. Você provavelmente não verá esses arquivos se usar repositórios de pacotes, mas se baixar pacotes diretamente, provavelmente terá que lidar com esses formatos. É claro que eles são exclusivos às suas distribuições, .deb para Debian-based e .rpm para Red Hat-based.

Para instalar esses pacotes diretos, você pode usar os comandos do gerenciamento de pacotes: rpm e dpkg. Esse são os ferramentas utilizadas para instalar arquivos de pacotes, no entanto, não instalam dependências de pacotes, então, se o seu pacote tiver 10 dependências, você precisaria instalar pacotes separadamente e, em seguida, suas dependências e assim por diante. Como você pode ver, isso foi um dos motivos que levaram ao surgimento dos sistemas de gerenciamento com apt.

Lembre-se de que haverá inúmeras vezes em que precisará instalar, consultar ou verificar um pacote com uma dessas ferramentas, então, lembre sempre esses comandos.

## **Install**, Consulta e Remoção de Pacotes

### Install e Remove um Pacote

**Debian**:

```
$ dpkg -i some_deb_package.deb
```

```
$ dpkg -r some_deb_package.deb
```

No Debian, `-i` significa install (instalar) e `-r` significa remove (remover).

**RPM**:

```
$ rpm -i some_rpm_package.rpm
```

```
$ rpm -e some_rpm_package.rpm
```

No RPM, `-i` significa install (instalar) e `-e` significa erase (remover).

### Listar Pacotes Instalados

**Debian**:

```
$ dpkg -l
```

`-l` significa list (lista).

**RPM**:

```
$ rpm -qa
```

`-q` significa query (consulta) e `a` significa all (todos).