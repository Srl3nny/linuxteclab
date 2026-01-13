---
title: "Comando sed"
youtube:
---

## sed — Stream EDitor (edição de texto em fluxo)


O sed (stream editor) é uma ferramenta do Linux usada para editar texto em fluxo, ou seja, ele lê a entrada linha por linha, aplica transformações e envia o resultado para a saída padrão — sem alterar o arquivo original, a menos que você peça explicitamente.


Ele é muito usado para:

- Substituir textos
- Remover linhas
- Inserir ou alterar conteúdo
- Automatizar edições em massa
- Trabalhar com logs, arquivos .conf e dados estruturados

Pense em um arquivo com centenas ou milhares de linhas, e precisa alterar uma variável por exemplo, é assim que o sed pode brilhar.

O fluxo básico de funcionamento de sed pode ser descrito como:
- Lê uma linha
- Aplica os comandos na linha
- Imprime o rresultado
- Passa para a próxima linha

Vamos iniciar mostrando o arquivo usado para demonstrar o uso do sed (exexmplo-sed.txt):


```null

  #===============================
 # Arquivo de testes para sed
 # LinuxTecLab - Arte do Texto
 # ===============================

[AVISO] Sistema iniciado com sucesso
[AVISO] Serviço ssh ativo
[WARNING] Uso de CPU acima do esperado
[ERROR] Falha ao iniciar o serviço nginx
[AVISO] Conexão estabelecida com o banco de dados
[ERROR] Timeout ao acessar o servidor remoto
[DEBUG] Valor da variável X = 42
[AVISO] Backup concluído com sucesso

 # Comentários que devem ser ignorados
 # Ajustar configurações futuramente

usuario1:x:1001:1001:João Silva:/home/usuario1:/bin/bash
usuario2:x:1002:1002:Maria Souza:/home/usuario2:/bin/zsh
root:x:0:0:root:/root:/bin/bash

arquivo.txt;1024;2026-01-10
relatorio.pdf;20480;2026-01-09
backup.tar.gz;512000;2026-01-08
```

## Substituição de texto


```bash
$ sed 's/AVISO/INFO/g'  exemplo-sed.tx

```

Veja que delimitamos com aspas (') ao redor da expressão, para impedir que o  interpretador de comando expanda ou interprete algo nela.
O **s** é para substiuição, após isso temos o padrão que estamos buscando (AVISO) e o padrão que estamos substtituindo o padrão (INFO), por fim o **g** diz para substituir em todas as ocorrências encontradas na linha.

É possível ver após a execução do comando no arquivo, primeiro ele imprimiu de volta o arquivo com a alteração pedida, mas se verificar o arquivo original, este não foi modificado.

Para modificar o arquivo, precisamos apenas usar a opção **-i **, essa opção altera o arquivo e não imprime na tela o resultado.

```bash
$ sed  -i 's/AVISO/INFO/g'  exemplo-sed.tx

```

Outra obseervação, o delimitador não precisa ser o "**/**" como usamos até agora, mas pode ser outro caracter como por exemplo o "**,**"

```bash
$ sed  -i 's,AVISO,INFO,g'  exemplo-sed.tx
```

## Deletando e trabalhando com linhas específicas

Para deletar uma linha que contenha o caracter do jogo da velha (#) podemos usar a sintaxe:


```bash
sed '/#/d' exemplo-sed.txt
```

Podemos ver uma mesmo comportamento do sed, onde temos oo padrão que é o # e o comando **d** que deleta a linha, mas lembre-se que não altera o arquivo original.


Agora vamos usar o sed para mostrar apenas a linha que contenha a palavra INFO (o padrão). Destrinchando o comando abaixo, o **p** pede para imprimir as linhas com INFO e o **-n** impede que o sed imprima as outras linhas que é o padrão da ferramenta. 


```bash
 sed -n '/INFO/p' exemplo-sed.txt
```



 


