---
title: cd
youtube: https://youtu.be/FgfwdUl3i-s?si=IK4moEVv_NtbPE-O
pagetitle: cd · navegar entre diretórios
description: cd · navegar entre diretórios. Tutorial em português da trilha Linha
  de comando do LinuxTecLab.
categories:
- Linha de comando
---

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

- . (diretório atual). Este é o diretório em que você está atualmente.
- .. (diretório pai). Leva você ao diretório acima do seu atual.
- ~ (diretório inicial). Este diretório é padronizado como seu “diretório inicial”. Como /home/pete.
- \- (diretório anterior). Isso o levará ao diretório anterior em que você estava.

```bash
$ cd .

$ cd ..

$ cd ~

$ cd -
```


---

## Pratique no terminal

```{=html}
<link rel="stylesheet" href="../../assets/exercicios/terminal.css">
<section class="exercise-terminal" data-navigation="../../exercicios/cd.json" aria-labelledby="cd-exercise-title">
  <h3 class="exercise-title" id="cd-exercise-title">Missão 03 · Navegue pelas pastas</h3>
  <p class="exercise-prompt">Entre em Documentos, volte ao diretório pai, visite Downloads e retorne à pasta pessoal.</p>
  <p class="exercise-note">Navegação em pastas fictícias com cd, pwd e ls. Os comandos não são executados no seu computador. O gabarito é público e o progresso fica salvo apenas neste navegador.</p>
  <div class="exercise-history" role="log" aria-label="Histórico de tentativas" aria-live="off"></div>
  <form>
    <label for="cd-exercise-input">aluno@linuxteclab:~$</label>
    <div class="exercise-input-row">
      <input id="cd-exercise-input" type="text" maxlength="200" autocomplete="off" autocapitalize="off" spellcheck="false" aria-label="Digite seu comando" disabled>
      <button type="submit" disabled>Conferir</button>
    </div>
  </form>
  <p class="exercise-status" role="status" aria-live="polite" aria-atomic="true">Carregando exercício…</p>
  <div class="exercise-actions">
    <button type="button" data-action="hint" disabled>Pedir dica</button>
    <button type="button" data-action="answer" disabled>Mostrar solução</button>
    <button type="button" data-action="reset" disabled>Reiniciar</button>
  </div>
  <noscript>Ative o JavaScript para praticar. Exemplos para praticar: cd Documentos, cd .., cd Downloads e cd ~.</noscript>
</section>
<script type="module" src="../../assets/exercicios/cd.mjs"></script>
```

## 📺 Vídeo relacionado

{{< video-youtube >}}

[Mais tutoriais de Linha de comando](../../temas.qmd#linha-de-comando)
