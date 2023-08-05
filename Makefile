.PHONY: help

help:  ## Show this help
	@awk 'BEGIN {FS = ":.*##"; printf "Usage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Section A
a: ## Documentation for command, prints "A"
	@echo "A"

hidden-section:
	@echo "Commands without description will not be shown"

##@ Section B
b: ## Documentation for command, prints an emoji
	 @echo 🤩
