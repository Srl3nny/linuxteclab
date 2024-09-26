# cd

Agora que você sabe onde está, vamos nos movimentar um pouco no sistema de arquivos. Existem duas maneiras diferentes de especificar um caminho, também conhecidos com PATH, como caminhos absolutos e relativos.

- Caminho absoluto: este é o caminho do diretório raiz. A raiz é o chefe. O diretório raiz é comumente mostrado como uma barra. Cada vez que seu caminho começa com / significa que você está iniciando no diretório raiz. Por exemplo, /home/bruno/Desktop.
- Caminho relativo: Este é o caminho de onde você está atualmente no sistema de arquivos. Se eu estivesse no local /home/pete/Documents e quisesse chegar a um diretório dentro de Documentos chamado impostos, não preciso especificar o caminho completo da raiz como /home/bruno/Documentos/impostos, posso simplesmente ir para impostos/ em vez disso.

Agora que você sabe como funcionam os caminhos, só precisamos de algo que nos ajude a mudar para o diretório que desejamos. Felizmente, temos cd ou “change directory” para fazer isso.

```bash
$ cd /home/bruno/backup
```

Aqui me movi para dentro do diretório /home/bruno/backup.

Agora estando dentro desse diretório, tenho ali uma outra pasta chamada isos, posso navegar até ela com

```bash
$ cd iso
```

Pode ser muito cansativo navegar por caminhos absolutos e relativos o tempo todo, felizmente existem alguns atalhos para ajudá-lo.

-     . (diretório atual). Este é o diretório em que você está atualmente.
-   .. (diretório pai). Leva você ao diretório acima do seu atual.
-     ~ (diretório inicial). Este diretório é padronizado como seu “diretório inicial”. Como /home/pete.
-     - (diretório anterior). Isso o levará ao diretório anterior em que você estava.

`$cd.`

`$cd..`

`$cd~`

`$cd-`
