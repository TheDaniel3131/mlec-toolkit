# MLEC-Toolkit

A Makefile toolkit for easy, quick scaffolding local web development projects.

## 📋 Overview

**MLEC** (Make Life Easier Commands) toolkit is a comprehensive Makefile toolkit designed to streamline the creation of various web development projects. Instead of remembering complex npm/npx commands, simply use short make commands to scaffold your projects instantly.

## 📦 Prerequisites

Before using MLEC, you need to have `make` installed on your system:

- **Windows**: Install via Chocolatey: `choco install make` or use Git Bash (includes make)
- **macOS**: Install via Homebrew: `brew install make` or use Xcode Command Line Tools
- **Linux**: Usually pre-installed, or install via package manager: `sudo apt install make` (Ubuntu/Debian) or `sudo yum install make` (CentOS/RHEL)

## 🚀 Quick Start

1. Place the `Makefile` in your projects directory **OR** in a global location like `D:/mlec-toolkit/` or `C:/mlec-toolkit/`
2. Run `make` or `make board` to see available commands
3. Create projects using appropriate commands based on setup:
    - **Local**: `make <command> name=<project-name>`
    - **Global**: `mlec <command> name=<project-name>` (after alias setup)

## 📍 Usage Based on Makefile Location

### 🏠 Local Usage (Makefile in current directory)

When the Makefile is in your current project directory:

```bash
# Standard local usage
make create-next name=my-awesome-app
make create-react-ts name=my-react-app
make board
```

### 🌐 Global Usage (Makefile in dedicated directory)

When the Makefile is in a global location (e.g., `D:/mlec-toolkit/` or `C:/mlec-toolkit/`):

#### Without Alias (Manual Path)

```bash
# Use -f flag to specify Makefile path
make -f D:/mlec-toolkit/Makefile create-next name=my-awesome-app
make -f C:/mlec-toolkit/Makefile create-react name=my-react-app
```

#### With Alias (Recommended)

After setting up the `mlec` alias (see setup below):

```bash
# Clean and simple global usage
mlec create-next name=my-awesome-app
mlec create-react-ts name=my-react-app
mlec board
```

## 🔗 Setting Up Global Alias (Recommended for Global Installation)

For easier access when using a global Makefile, create an alias to avoid typing the full path:

**Windows (Git Bash/WSL):**

```bash
# Add to ~/.bashrc or ~/.bash_profile
alias mlec='make -f "D:/mlec-toolkit/Makefile"'

# Reload shell or restart terminal, then use:
mlec create-next name=my-awesome-app
```

**macOS/Linux:**

```bash
# Add to ~/.bashrc, ~/.zshrc, or ~/.bash_profile
alias mlec='make -f /path/to/your/mlec-toolkit/Makefile'

# Reload shell or restart terminal, then use:
mlec create-vue-vite name=my-vue-app
```

**PowerShell (Windows):**

```powershell
# PowerShell requires a function, not an alias
function mlec {
     make -f "D:/mlec-toolkit/Makefile" @args
}
```

### ✅ PowerShell Setup (Detailed)

PowerShell requires functions instead of aliases for complex commands:

1. **Check if your PowerShell profile exists:**

    ```powershell
    Test-Path $PROFILE
    ```

2. **If it returns False, create it:**

    ```powershell
    New-Item -Type File -Path $PROFILE -Force
    ```

3. **Open your PowerShell profile:**

    ```powershell
    notepad $PROFILE
    ```

4. **Add this function:**

    ```powershell
    function mlec {
         make -f "D:/mlec-toolkit/Makefile" @args
    }
    ```

5. **Save and restart PowerShell**

**Now you can use:**

```powershell
mlec create-next name=my-app
mlec create-react-ts name=my-project
```

### 🔥 Shell Compatibility Summary

| Shell | Environment | Method | Syntax |
|-------|-------------|--------|--------|
| Git Bash | Windows | `alias` | `alias mlec='make -f "path/Makefile"'` |
| PowerShell | Windows Terminal | `function` | `function mlec { make -f "path" @args }` |
| WSL/Linux/macOS | Bash/Zsh | `alias` | `alias mlec='make -f /path/Makefile'` |

> 💡 **Tip**: Create a dedicated directory for your makefiles (e.g., `D:/mlec-toolkit/` or `C:/mlec-toolkit/`) to keep them organized and easily accessible across all your projects.

## 📚 Available Commands

### Frontend Frameworks

| Command | Description | Local Usage | Global Usage |
|---------|-------------|-------------|--------------|
| `create-next` | Next.js project | `make create-next name=myapp` | `mlec create-next name=myapp` |
| `create-next-ts` | Next.js with TypeScript | `make create-next-ts name=myapp` | `mlec create-next-ts name=myapp` |
| `create-react` | React project | `make create-react name=myapp` | `mlec create-react name=myapp` |
| `create-react-ts` | React with TypeScript | `make create-react-ts name=myapp` | `mlec create-react-ts name=myapp` |
| `create-vue` | Vue.js project | `make create-vue name=myapp` | `mlec create-vue name=myapp` |
| `create-vue-vite` | Vue.js with Vite | `make create-vue-vite name=myapp` | `mlec create-vue-vite name=myapp` |
| `create-vite` | Vite project | `make create-vite name=myapp` | `mlec create-vite name=myapp` |
| `create-svelte` | SvelteKit project | `make create-svelte name=myapp` | `mlec create-svelte name=myapp` |
| `create-angular` | Angular project | `make create-angular name=myapp` | `mlec create-angular name=myapp` |
| `create-nuxt` | Nuxt.js project | `make create-nuxt name=myapp` | `mlec create-nuxt name=myapp` |
| `create-solid` | SolidJS project | `make create-solid name=myapp` | `mlec create-solid name=myapp` |

### Backend Frameworks

| Command | Description | Local Usage | Global Usage |
|---------|-------------|-------------|--------------|
| `create-express` | Express.js server | `make create-express name=myapi` | `mlec create-express name=myapi` |
| `create-nest` | NestJS application | `make create-nest name=myapi` | `mlec create-nest name=myapi` |

### Static Site Generators

| Command | Description | Local Usage | Global Usage |
|---------|-------------|-------------|--------------|
| `create-astro` | Astro project | `make create-astro name=mysite` | `mlec create-astro name=mysite` |
| `create-gatsby` | Gatsby site | `make create-gatsby name=mysite` | `mlec create-gatsby name=mysite` |

### Development Tools

| Command | Description | Local Usage | Global Usage |
|---------|-------------|-------------|--------------|
| `create-storybook` | Initialize Storybook | `make create-storybook name=mystory` | `mlec create-storybook name=mystory` |
| `create-electron` | Electron application | `make create-electron name=myapp` | `mlec create-electron name=myapp` |
| `setup-tailwind` | Initialize Tailwind CSS | `make setup-tailwind name=myproject` | `mlec setup-tailwind name=myproject` |

## 🔧 Additional Commands

| Command | Description | Local Usage | Global Usage |
|---------|-------------|-------------|--------------|
| `board` | Display the main command board | `make board` | `mlec board` |
| `author` | Show author information | `make author` | `mlec author` |
| `info` | Display project details and shell information | `make info` | `mlec info` |
| `help` | Show help information | `make help` | `mlec help` |

## 💡 Usage Tips

- **Always specify a project name**: Use `name=<your-project-name>` parameter
- **Local setup**: Use `make <command>` when Makefile is in current directory
- **Global setup**: Use `mlec <command>` after setting up the alias for global installation
- **Manual global**: Use `make -f <path>` when Makefile is elsewhere and no alias is set
- The Makefile uses `/bin/bash` as the default shell
- Commands will create projects in your current directory
- If a command isn't found, the help board will automatically display

## 🛠️ Customization

The Makefile includes examples of different shell configurations at the top. You can modify the `SHELL` variable to use your preferred shell environment.

---

*This toolkit is designed for local development environments to simplify project scaffolding workflows. Created by @zephrous.*
