# Publicação do LinuxTecLab

O projeto usa Quarto 1.6.42, Python 3.9+ e PyYAML. Execute `make build` na raiz. O comando atualiza o índice temático, renderiza o site em `docs/` e gera os endereços canônicos, o sitemap e os espaços de anúncio configurados.

No Cloudflare Pages, conecte este repositório, use `main` para produção e habilite prévias para branches. Escolha o preset **None**, comando de build `bash scripts/pages.sh` e diretório de saída `docs`. O Pages instala o Quarto e renderiza as fontes a cada atualização. Confira a prévia do branch antes do merge. O domínio canônico configurado é `linuxteclab.com.br`. Após conectá-lo ao Pages, envie `https://linuxteclab.com.br/sitemap.xml` ao Google Search Console.

## Livros e publicidade

Edite `livros.qmd` para acrescentar livros. Para um link remunerado, identifique-o no texto e use a sintaxe Quarto `[Comprar (link de afiliado)](URL){rel="sponsored"}`. A página atual contém dois links editoriais gratuitos.

Por padrão, o build não inclui anúncios nem cria `ads.txt`. Para a verificação inicial no AdSense, use a forma de comprovação oferecida pela sua conta (por exemplo, a meta tag obtida no painel, via `include-in-header` do Quarto). Depois da aprovação, crie um bloco responsivo no AdSense. Atualize a página de privacidade e configure as mensagens e o consentimento aplicáveis ao público antes de carregar anúncios.

Para gerar a versão monetizada, defina `ADSENSE_CLIENT` com seu ID de editor e `ADSENSE_SLOT` com o número real do bloco **no ambiente em que executar make build**. O pós-processamento gera um anúncio ao final dos tutoriais e um `ads.txt` na raiz publicada. Confira a linha do arquivo com a informada pela sua conta AdSense. No Pages, use as variáveis de produção e faça um novo build.
