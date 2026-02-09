# **Compreendendo os Repositórios de Pacotes**

Você provavelmente já se perguntou como os pacotes que são subidos na internet acabam chegando nos seus computadores? Você vai a página de download de cada pacote que deseja e clica em download e instalação? Bem, é possível fazer isso, mas há algo melhor chamado repositórios de pacotes. Repositórios são simplesmente locais de armazenamento centralizados para pacotes. Existem montes de repositórios que guardam uma diversidade de pacotes e, melhor ainda, eles estão todos disponíveis na internet.

Para exemplo, imagine que eu quero instalar o software fictício linuxteclab no meu computador. linuxteclab gerencia seus próprios repositórios para pacotes. Ele hospeda esse repositório no endereço-fonte: [http://download.linuxteclab.com.br/linux/deb/](http://download.widgets/linux/deb/)

Em vez de ir à sua página inicial para baixar o pacote diretamente, você pode instruir o seu computador a encontrar o software no endereço do link acima.  
Sua distribuição já vem com fontes pré-aulilizadas para obter pacotes e isso é como ela instala todos os pacotes básicos que você vê em seu sistema. Em um sistema Debian, esse arquivo de fontes é o `/etc/apt/sources.list`. O seu computador saberá buscar lá e verificar se há repositórios fontes adicionais.

**Exemplo**:  
Você pode adicionar fontes adicionais em seu arquivo `/etc/apt/sources.list` para obter pacotes personalizados. Por exemplo, você pode adicionar a seguinte linha para obter o repositório do Ubuntu:

```bash
deb http://archive.ubuntu.com/ubuntu xenial main restricted
```

Isso permitirá que você obtenha pacotes do Ubuntu Xenial naquela fonte.