---
title: "Coamdno Paste"
youtube:
---

O comando paste no Linux é utilizado para combinar linhas de diferentes arquivos de forma horizontal, ou seja, ele "cola" o conteúdo das linhas correspondentes de dois ou mais arquivos lado a lado, separando-as por um delimitador (por padrão, o caractere de tabulação).

Vamos tomar como exemplo os dois arquivos a seguir:


Arq1.txt
```
1
2
3
```

Arq2.txt
```
a
b
c
```

Usando o paste.
```
$ paste arqu1.txt arq2.txt
```

Como resultado teria:

```
1   a
2   b
3   c
```