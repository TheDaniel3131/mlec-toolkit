
# MLEC - Make Life Easier Commands

A Makefile toolkit for quickly scaffolding web development projects.

## 📋 Overview

**MLEC** (Make Life Easier Commands) is a comprehensive Makefile toolkit designed to streamline the creation of various web development projects. Instead of remembering complex npm/npx commands, simply use short make commands to scaffold your projects instantly.

**Key Differences:**

- **Toolkit vs Script:** A toolkit provides a complete set of organized tools and utilities (like this collection of make commands), while a script is typically a single executable file. This toolkit offers multiple interconnected commands working together as a cohesive development environment.

**Author:** zephrous  
**Project:** mlec-toolkit

## 🚀 Quick Start

1. Place the `Makefile` in your projects directory
2. Run `make` or `make board` to see available commands
3. Create projects using: `make <command> name=<project-name>`

### Example Usage

```bash
# Create a Next.js project
make create-next name=my-awesome-app

# Create a React TypeScript project  
make create-react-ts name=my-react-app

# Create a Vue project with Vite
make create-vue-vite name=my-vue-app
```

## 📚 Available Commands

### Frontend Frameworks

| Command | Description |
|---------|-------------|
| `create-next` | Next.js project |
| `create-next-ts` | Next.js with TypeScript |
| `create-react` | React project |
| `create-react-ts` | React with TypeScript |
| `create-vue` | Vue.js project |
| `create-vue-vite` | Vue.js with Vite |
| `create-vite` | Vite project |
| `create-svelte` | SvelteKit project |
| `create-angular` | Angular project |
| `create-nuxt` | Nuxt.js project |
| `create-solid` | SolidJS project |

### Backend Frameworks

| Command | Description |
|---------|-------------|
| `create-express` | Express.js server |
| `create-nest` | NestJS application |

### Static Site Generators

| Command | Description |
|---------|-------------|
| `create-astro` | Astro project |
| `create-gatsby` | Gatsby site |

### Development Tools

| Command | Description |
|---------|-------------|
| `create-storybook` | Initialize Storybook |
| `create-electron` | Electron application |
| `setup-tailwind` | Initialize Tailwind CSS |

## 🔧 Additional Commands

- `make board` - Display the main command board
- `make author` - Show author information
- `make info` - Display project details and shell information
- `make help` - Show help information

## 💡 Usage Tips

- Always specify a project name: `make <command> name=<your-project-name>`
- The Makefile uses `/bin/bash` as the default shell
- Commands will create projects in your current directory
- If a command isn't found, the help board will automatically display

## 🛠️ Customization

The Makefile includes examples of different shell configurations at the top. You can modify the `SHELL` variable to use your preferred shell environment.

---

*This toolkit is designed for local development environments to simplify project scaffolding workflows.*
