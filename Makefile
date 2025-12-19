SHELL := /bin/bash

PY ?= python3
QUARTO ?= quarto
SIDEBAR_SCRIPT ?= gerar_sidebar.py
OUTPUT_DIR ?= docs

.PHONY: help preview build publish sidebar clean status

help:
	@echo "Targets:"
	@echo "  make preview   -> quarto preview (servidor local)"
	@echo "  make build     -> (sidebar) + quarto render (gera em $(OUTPUT_DIR)/)"
	@echo "  make publish   -> build + git add/commit/push"
	@echo "  make sidebar   -> roda $(SIDEBAR_SCRIPT) se existir"
	@echo "  make clean     -> remove $(OUTPUT_DIR)/ (cuidado)"
	@echo "  make status    -> git status"

preview:
	$(QUARTO) preview

sidebar:
	@if [[ -f "$(SIDEBAR_SCRIPT)" ]]; then \
		echo "[sidebar] Rodando $(SIDEBAR_SCRIPT)..." ; \
		$(PY) "$(SIDEBAR_SCRIPT)" ; \
	else \
		echo "[sidebar] Script $(SIDEBAR_SCRIPT) não encontrado, pulando." ; \
	fi

build: sidebar
	$(QUARTO) render
	@echo "[build] Site gerado em $(OUTPUT_DIR)/"

publish: build
	git status
	git add -A
	@read -p "Mensagem do commit: " msg; \
	if [[ -z "$$msg" ]]; then msg="Atualiza site (Quarto)"; fi; \
	git commit -m "$$msg" || true
	git push

clean:
	@echo "Removendo $(OUTPUT_DIR)/ ..."
	rm -rf "$(OUTPUT_DIR)/"

status:
	git status

