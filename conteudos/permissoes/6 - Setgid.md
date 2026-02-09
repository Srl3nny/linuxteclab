Similarmente ao bit de permissão “Set User ID”, há um bit de permissão “Set Group ID” (SGID). Este bit permite que um programa execute como se fosse um membro do grupo correspondente.  
Vamos verificar um exemplo:

```
$ ls -l /usr/bin/wall
-rwxr-sr-x 1 root tty 19024 Dec 14 11:45 /usr/bin/wall
```

Agora podemos ver que o bit de permissão está configurado no conjunto de permissões do grupo.

Modificando o SGID

```
$ sudo chmod g+s exemplo.txt
$ sudo chmod 2555 exemplo.txt
```

A representação numérica para SGID é 2.

&nbsp;