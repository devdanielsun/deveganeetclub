HUGO ?= hugo
THEME ?= cookbook
COMMON_CONFIG := config/common.toml
THEME_CONFIG := config/$(THEME).toml

.PHONY: help check-theme dev build

help:
	@printf "Theme commands:\n"
	@printf "  make dev\n"
	@printf "  make dev THEME=cuisine-book\n"
	@printf "  make build\n"
	@printf "  make build THEME=cuisine-book\n"

check-theme:
	@test -f "$(THEME_CONFIG)" || { echo "Unknown THEME='$(THEME)'. Use THEME=cookbook or THEME=cuisine-book."; exit 1; }

dev: check-theme
	$(HUGO) server --renderToDisk --config $(COMMON_CONFIG),$(THEME_CONFIG)

build: check-theme
	$(HUGO) build --config $(COMMON_CONFIG),$(THEME_CONFIG)
