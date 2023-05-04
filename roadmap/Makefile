.PHONY: help

roadmap:
	@bash combine.sh
	dot -Tpng roadmap.dot -o roadmap.png
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo "  roadmap     - generate a roadmap PNG image from roadmap.dot"
	@echo "             EX: make roadmap"
	@echo ""
