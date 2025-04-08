Além de alterar os permissões de um arquivo, você também pode alterar a propriedade do usuário e do grupo associados ao arquivo.  

**Alterar proprietário do usuário**

```
sudo chown linuxteclab exemplos.txt
```

Este comando definirá o usuário dono do arquivo `exemplos.txt` como `linuxteclab`.

**Alterar grupo do arquivo**

```
sudo chgrp TI arq.txt
```

Este comando definirá o grupo do arquivo `arq.txt` como `TI`.

**Alterar proprietário do usuário e grupo ao mesmo tempo**

Se você usar o carácter de dois pontos após o usuário, poderá alterar usuário e grupo ao mesmo tempo.

```
sudo chown linuxteclab:TI exemplos.txt
```