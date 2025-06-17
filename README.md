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
3. Create projects using: `make <command> name=<project-name>`

### Makefile Location Usage

**If Makefile is in your current project directory:**

```bash
# Standard usage
make create-next name=my-awesome-app
```

**If Makefile is in a different location (e.g., D:/ or C:/):**

```bash
# Use -f flag to specify Makefile path
make -f D:/Projects\ 2025/mlec-toolkit/Makefile create-next name=my-awesome-app
make -f C:/tools/makefiles/Makefile create-react name=my-react-app
```

### 🔗 Setting Up Aliases (Recommended)

For easier access, create an alias to avoid typing the full path every time:

**Windows (Git Bash/WSL):**

```bash
# Add to ~/.bashrc or ~/.bash_profile
alias mlec='make -f "D:/Projects 2025/mlec-toolkit/Makefile"'

# Usage after alias setup
mlec create-next name=my-awesome-app
mlec create-react-ts name=my-react-app
```

**macOS/Linux:**

```bash
# Add to ~/.bashrc, ~/.zshrc, or ~/.bash_profile
alias mlec='make -f /path/to/your/makefiles/Makefile'

# Usage after alias setup
mlec create-vue-vite name=my-vue-app
mlec create-astro name=my-site
```

**PowerShell (Windows):**

```powershell
# PowerShell requires a function, not an alias
function mlec {
    make -f "D:/Projects 2025/mlec-toolkit/Makefile" @args
}
```

#### ✅ PowerShell Setup (Detailed)

In PowerShell, you can't create complex aliases like in bash. PowerShell aliases can only alias commands, not full command strings with parameters.

**🔧 To Set Up PowerShell Function:**

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

4. **Add this function inside:**

   ```powershell
   function mlec {
       make -f "D:/Projects 2025/mlec-toolkit/Makefile" @args
   }
   ```

5. **Save and restart PowerShell**

**✅ Now you can use:**

```powershell
mlec create-next name=my-app
mlec create-react-ts name=my-project
```

#### 🔥 Shell Compatibility Summary

| Shell | Environment | Method | Syntax |
|-------|-------------|--------|--------|
| Git Bash | Windows | `alias` | `alias mlec='make -f "path/Makefile"'` |
| PowerShell | Windows Terminal | `function` | `function mlec { make -f "path" @args }` |
| WSL/Linux/macOS | Bash/Zsh | `alias` | `alias mlec='make -f /path/Makefile'` |

> 💡 **Tip**: Create a dedicated directory for your makefiles (e.g., `D:/Projects 2025/mlec-toolkit/` or `C:/tools/makefiles/`) to keep them organized and easily accessible across all your projects.

### Example Usage

```bash
# Create a Next.js project (local Makefile)
make create-next name=my-awesome-app

# Create a React TypeScript project (remote Makefile)
make -f D:/mlec-toolkit/Makefile create-react-ts name=my-react-app

# Using alias (after setup)
mlec create-vue-vite name=my-vue-app
mlec create-nest name=my-api-server
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
- Use `-f <path>` when Makefile is not in current directory
- Set up aliases for frequently used makefiles to simplify commands
- The Makefile uses `/bin/bash` as the default shell
- Commands will create projects in your current directory
- If a command isn't found, the help board will automatically display

## 🛠️ Customization

The Makefile includes examples of different shell configurations at the top. You can modify the `SHELL` variable to use your preferred shell environment.

---

*This toolkit is designed for local development environments to simplify project scaffolding workflows. Created by @zephrous.*
