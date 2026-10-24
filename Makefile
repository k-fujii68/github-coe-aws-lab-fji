# Makefile

.PHONY: help docs labs validate

help:
	@echo "Usage:"
	@echo "  make docs      Open docs structure overview"
	@echo "  make labs      Show lab list"
	@echo "  make validate  Check for basic repo hygiene"

labs:
	@echo "Available labs:"
	@echo "  1. 01-github-governance"
	@echo "  2. 02-aws-iam-vpc"
	@echo "  3. 03-github-actions-oidc"

validate:
	@find . -maxdepth 2 -type d | sort

