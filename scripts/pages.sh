#!/usr/bin/env bash
set -euo pipefail

# O build do Pages usa Linux x86_64. A versão acompanha o Quarto usado no projeto.
runtime=$(mktemp -d)
trap 'rm -rf "$runtime"' EXIT
version=1.6.42
curl --fail --location --silent --show-error --retry 3 \
  "https://github.com/quarto-dev/quarto-cli/releases/download/v${version}/quarto-${version}-linux-amd64.tar.gz" \
  -o "$runtime/quarto.tar.gz"
tar -xzf "$runtime/quarto.tar.gz" -C "$runtime"
python3 -m venv "$runtime/venv"
"$runtime/venv/bin/pip" install --disable-pip-version-check PyYAML==6.0.2
export PATH="$runtime/venv/bin:$runtime/quarto-${version}/bin:$PATH"
make build
