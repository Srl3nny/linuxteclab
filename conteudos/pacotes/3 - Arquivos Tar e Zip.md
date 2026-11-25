---
title: Arquivos tar e zip
pagetitle: Arquivos tar e zip
description: Arquivos tar e zip. Tutorial em português da trilha Pacotes do LinuxTecLab.
categories:
- Pacotes
---

# **Arquivos e Compressão no Linux**

Aprenda a gerenciar arquivos compactados no Linux antes de instalar pacotes de diferentes gerenciadores.
O gzip é um compactador que trabalha apenas com um único arquivo por vez, ou seja, ele não consegue juntar vários arquivos em um só.

Para resolver isso, usamos o tar (Tape ARchiver), que serve para empacotar vários arquivos e diretórios em um único arquivo .tar.

Vamos começar com gzip.

## **Compressão com Gzip**

O gzip é um programa comum em Linux que compreende arquivo em formato `.gz`. Para comprimir um arquivo:

```bash
$ gzip meuarquivo.txt
```

Para descomprimir:

```bash
$ gunzip meuarquivo.txt.gz
```

## **Criar arquivos ZIP com Tar**

Infelizmente, o gzip não é capaz de adicionar múltiplos arquivos em um arquivo ZIP. Felizmente, o programa tar (short for Tape ARchiver) permite fazer isso. Quando você cria um arquivo com tar, ele terá um prefixo `.tar`.

Exemplo:

```bash
$ tar -cvf meuarquivo.tar arquivo1.txt arquivo2.txt
```

Opções:

- `c`: criar um novo arquivo
- `v`: ser verboso e mostrar o que está fazendo
- `f`: fornece o nome do arquivo ZIP

## **Extrair arquivos ZIP com Tar**

Para extrair os conteúdo de um arquivo ZIP, use:

```bash
$ tar -xvf meuarquivo.tar
```


Opções:

- `x`: extrair os conteúdos do arquivo ZIP
- `v`: ser verboso e mostrar o que está fazendo
- `f`: fornece o nome do arquivo ZIP


O 
## **Compressão e descompressão com Tar e Gzip**

Muitas vezes, você encontrará um arquivo ZIP que foi compresso, como `meuarquivo.tar.gz`. Basta descomprimir com `gunzip` e, em seguida, extrair os conteúdos do arquivo ZIP com `tar`.

Exemplo:

```bash
$ gunzip meuarquivo.tar.gz
$ tar xvf meuarquivo.tar
```

Alternativamente, você pode usar a opção `z` com `tar`, que irá usar o gzip ou gunzip automaticamente.

Criar um arquivo ZIP compresso:

```bash
$ tar -czf meuarquivo.tar.gz meuarquivo1.txt meuarquivo2.txt
```

Descompremir e extrair:

```bash
$ tar -xzf meuarquivo.tar.gz
```

## **Outras Opções**

- 'j': Utiliza o bzip2 para compactar e descompactar os arquivos .tar.bz2;
- 'J': Utiliza o xz para compactar e descompactar os arquivos .tar.xz

## **Exemplos de uso**

Vamos usar de exemplo, fazer um backup do diretório Documentos do home do usuário Bruno.

```bash
$ tar -czvf /home/bruno/documentos.tar.gz /home/bruno/Documentos
```

Outra opção muito importante é verificar os arquivos existente, antes da descompactação.


```bash
 tar -tzf /home/bruno/Documentos.tar.gz
```

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-exercise="../../exercicios/pacotes-03.json" aria-labelledby="pacotes-03-exercise-title">
  <h3 class="exercise-title" id="pacotes-03-exercise-title">Desafio · Arquivos Tar e Zip</h3>
  <p class="exercise-prompt">Use tar para extrair backup.tar.gz na pasta atual.</p>
  <p class="exercise-note">Simulação de uma resposta. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="pacotes-03-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="pacotes-03-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Uma resposta possível é tar -xzf backup.tar.gz.</noscript>
</section>
<script type="module" src="../../assets/exercicios/terminal.mjs"></script>
```

[Mais tutoriais de Pacotes](../../temas.qmd#pacotes)
