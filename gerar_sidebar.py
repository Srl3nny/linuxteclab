import os
import yaml
import re

PASTA_CONTEUDOS = "conteudos"

# Defina a ordem das seções manualmente
ORDEM_SECOES = [
    "linha-de-comando",
    "arte-do-texto",
    "manipulacao-de-usuario",
    "processos",
    "pacotes",
    "permissoes",
    "troubleshooting",
    "compartilhamento",
    "configurar-rede",
    "devices"
]

# Função para formatar o nome da seção (troca "-" por espaço e capitaliza)
def formatar_secao(nome):
    return {'linha-de-comando': 'Linha de comando', 'arte-do-texto': 'Texto e filtros', 'manipulacao-de-usuario': 'Usuários e grupos', 'processos': 'Processos', 'pacotes': 'Pacotes', 'permissoes': 'Permissões', 'troubleshooting': 'Diagnóstico de rede', 'compartilhamento': 'Compartilhamento', 'configurar-rede': 'Configuração de rede', 'devices': 'Dispositivos'}[nome]

# Verifica se a pasta "conteudos" existe
if not os.path.exists(PASTA_CONTEUDOS):
    print(f"Erro: Pasta '{PASTA_CONTEUDOS}' não encontrada.")
    exit(1)

# Lista todas as pastas dentro de "conteudos"
pastas_disponiveis = [p for p in os.listdir(PASTA_CONTEUDOS) if os.path.isdir(os.path.join(PASTA_CONTEUDOS, p))]

# Mantém apenas as pastas que estão em ORDEM_SECOES e ignora outras
pastas_encontradas = [p for p in ORDEM_SECOES if p in pastas_disponiveis]

conteudo_sidebar = []

for pasta in pastas_encontradas:
    caminho_pasta = os.path.join(PASTA_CONTEUDOS, pasta)

    if os.path.isdir(caminho_pasta):
        arquivos = sorted(
            (f for f in os.listdir(caminho_pasta) if f.endswith((".md", ".qmd"))),
            key=lambda x: int(re.match(r"(\d+)", x).group(1)) if re.match(r"(\d+)", x) else 999
        )

        if arquivos:  # Só adiciona se houver arquivos
            contents = []
            for arquivo in arquivos:
                href = f"{PASTA_CONTEUDOS}/{pasta}/{arquivo}"
                nome_arquivo = re.sub(r'^\d+[-_ ]*', '', arquivo).replace('.qmd', '').replace('.md', '').title()
                contents.append({
                    "href": href,
                    "text": nome_arquivo.strip().replace("_", " ")
                })

            conteudo_sidebar.append({
                "section": formatar_secao(pasta),
                "contents": contents
            })

# Se não encontrou nada, algo está errado
if not conteudo_sidebar:
    print("⚠ Nenhum conteúdo encontrado. Verifique os arquivos dentro de 'conteudos/'.")
    exit(1)

# Lê o conteúdo do _quarto.yml
with open("_quarto.yml", "r", encoding="utf-8") as f:
    quarto_config = yaml.safe_load(f) or {}

# Se o arquivo estiver vazio, cria a estrutura básica
quarto_config["project"] = quarto_config.get("project", {"type": "website"})
quarto_config["website"] = quarto_config.get("website", {})

# Substitui a sidebar SEM pegar valores antigos
quarto_config["website"]["sidebar"] = {
    "style": "docked",
    "search": True,
    "collapse-level": 1,
    "contents": conteudo_sidebar
}

# Escreve de volta no _quarto.yml
with open("_quarto.yml", "w", encoding="utf-8") as f:
    yaml.dump(quarto_config, f, allow_unicode=True, default_flow_style=False)

print("✅ Sidebar gerada corretamente na ordem definida em ORDEM_SECOES!")

from pathlib import Path
from urllib.parse import quote

indice = ["---", 'title: "Trilhas de Linux"', 'description: "Índice de tutoriais por assunto, do primeiro comando à administração de redes Linux."', "---", "", "Escolha um assunto para consultar suas aulas.", ""]
for secao in conteudo_sidebar:
    slug = Path(secao["contents"][0]["href"]).parent.name
    indice.append(f'- [{secao["section"]}](#{slug})')
for secao in conteudo_sidebar:
    slug = Path(secao["contents"][0]["href"]).parent.name
    indice.extend(["", f'## {secao["section"]} {{#{slug}}}', ""])
    for item in secao["contents"]:
        url = quote(str(Path(item["href"]).with_suffix(".html")))
        indice.append(f'- [{item["text"]}]({url})')
Path("temas.qmd").write_text("\n".join(indice) + "\n", encoding="utf-8")
