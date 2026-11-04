"""Finalize public URLs for Cloudflare Pages and optionally enable approved ads."""
import os
import re
from pathlib import Path
from urllib.parse import quote
from xml.etree import ElementTree as ET

root = Path("docs")
domain = "https://linuxteclab.com.br"
def public_url(path):
    rel = path.relative_to(root).with_suffix("").as_posix()
    return domain + "/" + quote("" if rel == "index" else rel)

publisher = os.environ.get("ADSENSE_CLIENT", "")
slot = os.environ.get("ADSENSE_SLOT", "")
if publisher or slot:
    if not re.fullmatch(r"ca-pub-[0-9]{16}", publisher) or not re.fullmatch(r"[0-9]+", slot):
        raise SystemExit("Informe ADSENSE_CLIENT e ADSENSE_SLOT válidos.")
    if "Esta edição do site não carrega scripts" in Path("privacidade.qmd").read_text():
        raise SystemExit("Atualize a política de privacidade antes de ativar publicidade.")
    (root / "ads.txt").write_text(f"google.com, {publisher[3:]}, DIRECT, f08c47fec0942fa0\n")
else:
    (root / "ads.txt").unlink(missing_ok=True)

ns = "http://www.sitemaps.org/schemas/sitemap/0.9"
ET.register_namespace("", ns)
sitemap = ET.Element(f"{{{ns}}}urlset")
for page in sorted(root.rglob("*.html")):
    html = page.read_text()
    if 'name="generator" content="quarto-' not in html:
        continue
    url = public_url(page)
    html = re.sub(r'<link\b[^>]*rel="canonical"[^>]*>', '', html)
    html = re.sub(r'<meta property="og:url" content="[^"]*"', lambda _: f'<meta property="og:url" content="{url}"', html)
    html = html.replace("</head>", f'<link rel="canonical" href="{url}">\n</head>', 1)
    if page.is_relative_to(root / "conteudos"):
        topic = page.parent.name
        html = re.sub(r'<div class="quarto-category">([^<]*)</div>', rf'<div class="quarto-category"><a href="../../temas.html#{topic}">\1</a></div>', html)
    html = re.sub(r'<aside class="lab-ad".*?</aside>', '', html, flags=re.S)
    if publisher and "conteudos" in page.relative_to(root).parts and 'class="lab-ad"' not in html:
        ad = f'''<aside class="lab-ad" aria-label="Publicidade"><small>Publicidade</small>
<script async crossorigin="anonymous" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client={publisher}"></script>
<ins class="adsbygoogle" style="display:block" data-ad-client="{publisher}" data-ad-slot="{slot}" data-ad-format="auto" data-full-width-responsive="true"></ins>
<script>(adsbygoogle = window.adsbygoogle || []).push({{}});</script></aside>'''
        html = html.replace("</main>", ad + "</main>", 1)
    page.write_text(html)
    ET.SubElement(ET.SubElement(sitemap, f"{{{ns}}}url"), f"{{{ns}}}loc").text = url
ET.ElementTree(sitemap).write(root / "sitemap.xml", encoding="utf-8", xml_declaration=True)
