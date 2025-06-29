### Author: zephrous
### Project: mlec-toolkit

# Shells
# Common shells that can run makefiles:
SHELL := /bin/sh          # POSIX shell (most portable)
SHELL := /bin/bash        # Bash (your current choice)
SHELL := /bin/zsh         # Z shell
SHELL := /bin/dash        # Debian Almquist shell
SHELL := /bin/ksh         # Korn shell
SHELL := /bin/fish        # Fish shell
SHELL := /usr/bin/env sh  # Use system's default sh

# On Windows:
SHELL := cmd              # Windows Command Prompt
SHELL := powershell       # PowerShell
SHELL := C:\Windows\System32\cmd.exe

# Project name & author information variables
AUTHOR := zephrous
PROJECT_NAME := mlec-toolkit

# Next.js projects
create-next:
	npx create-next-app@latest $(name)

create-next-ts:
	npx create-next-app@latest $(name) --typescript

# React projects
create-react:
	npx create-react-app@latest $(name)

create-react-ts:
	npx create-react-app@latest $(name) --template typescript

# Vue projects
create-vue:
	npx create-vue@latest $(name)

create-vue-vite:
	npm create vite@latest $(name) -- --template vue

# Vite projects
create-vite:
	npm create vite@latest $(name)

# Other frameworks
create-svelte:
	npm create svelte@latest $(name)

create-angular:
	npx @angular/cli@latest new $(name)

create-nuxt:
	npx nuxi init $(name)

create-solid:
	npm create solid@latest $(name)

# Backend frameworks
create-express:
	npx express-generator $(name)

create-nest:
	npx @nestjs/cli@latest new $(name)

# Static site generators
create-astro:
	npm create astro@latest $(name)

create-gatsby:
	npx gatsby-cli@latest new $(name)

# Tools
create-storybook:
	npx sb init

create-electron:
	npx create-electron-app@latest $(name)

setup-tailwind:
	npx tailwindcss init -p

# Default target to show help when no target is specified
.DEFAULT_GOAL := board

# Catch-all target for undefined rules
%:
	@echo "Target '$@' not found. Available commands:"
	@echo ""
	@$(MAKE) board

# Board target
board:
	@echo "----------------------------------------------------------------------"
	@echo "Welcome to the MLEC Toolkit!"
	@echo "----------------------------------------------------------------------"
	@echo "This toolkit provides commands to create various web projects."
	@echo "Use 'make <target> name=<project-name>' to create a project."
	@echo "Ex: make create-next name=my-next-app"
	@echo "----------------------------------------------------------------------"
	@echo "======================================================================"
	@echo " Available commands:"
	@echo "======================================================================"
	@echo "  Frontend Frameworks:"
	@echo "    create-next           - Create Next.js app"
	@echo "    create-next-ts        - Create Next.js app with TypeScript"
	@echo "    create-react          - Create React app"
	@echo "    create-react-ts       - Create React app with TypeScript"
	@echo "    create-vue            - Create Vue.js app"
	@echo "    create-vue-vite       - Create Vue.js app with Vite"
	@echo "    create-vite           - Create Vite project"
	@echo "    create-svelte         - Create Svelte app"
	@echo "    create-angular        - Create Angular app"
	@echo "    create-nuxt           - Create Nuxt.js app"
	@echo "    create-solid          - Create SolidJS app"
	@echo ""
	@echo "  Backend Frameworks:"
	@echo "    create-express        - Create Express.js app"
	@echo "    create-nest           - Create NestJS app"
	@echo ""
	@echo "  Static Site Generators:"
	@echo "    create-astro          - Create Astro project"
	@echo "    create-gatsby         - Create Gatsby site"
	@echo ""
	@echo "  Tools:"
	@echo "    create-storybook      - Initialize Storybook"
	@echo "    create-electron       - Create Electron app"
	@echo "    setup-tailwind        - Setup Tailwind CSS"
	@echo ""
	@echo "======================================================================"
	@echo "For more information, run 'make help', 'make author' or 'make info'."
	@echo "======================================================================"

# Author & Project information
author:
	@echo "Author: $(AUTHOR)"

info:
	@echo "Project: $(PROJECT_NAME), MLEC stands for 'Make Life Easier Commands'."
	@echo "This Makefile provides a set of commands to quickly scaffold various web projects."
	@echo "Shell: $(SHELL) (used for executing commands in this Makefile)"

# Phony targets
.PHONY: help author info
