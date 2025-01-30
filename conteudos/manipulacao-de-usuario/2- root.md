Já aprendemos como obter acesso como superusuário usando o comando `sudo`. Outra forma de obter esse acesso é com o comando `su`. Este comando substitui usuários e abre uma shell raiz se não houver usuário especificado. Você pode usá-lo para substituir qualquer usuário desde que saiba a senha.

```bash
$ su
```

No entanto, há algumas desvantagens em usar esse método: é muito fácil cometer um erro crítico executando todos os comandos como raiz, todas as ações são realizadas como root, tornando difícil rastrear qual usuário realizou uma operação específica, etc. Em resumo, se você precisar executar comandos como superusuário, basta usar `sudo`.

Agora que sabemos quais comandos usar como superusuário, a pergunta é: Como você sabe quem tem acesso para fazer isso? O sistema não permite que qualquer um execute comandos como superusuário, então como saber?

Existe um arquivo chamado `/etc/sudoers` que lista os usuários que podem executar o comando `sudo`. Você pode editar esse arquivo com o comando `visudo`.

# Arquivo /etc/sudoers

Este arquivo é onde o sistema armazena a lista de usuários que podem executar comandos como superusuário. Se você quiser adicionar ou remover usuários da lista, use o comando `visudo`. Além disso, o arquivo `/etc/sudoers` é protegido por senha, garantindo que apenas usuários autorizados possam realizá-las alterações.

# Arquivo visudo

O comando `visudo` é o executor de edição do arquivo `/etc/sudoers`. Ele abre o arquivo em modo de edição segura, permitindo que você adicione ou remova usuários da lista de usuários autorizados. Além disso, o comando `visudo` também verifica se as alterações feitas são corretas antes de permitir que elas sejam aplicadas ao sistema.

# Exemplos

- `sudo -l`: Mostra a lista de comandos que você como superusuário pode executar.
- `visudo`: Abre o arquivo `/etc/sudoers` em modo de edição segura.
- `sudo nano /etc/sudoers`: Abre o arquivo `/etc/sudoers` para editar com o nano.
