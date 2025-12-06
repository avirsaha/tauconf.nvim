<p align="center">
  <img src="https://github.com/avirsaha/tauconf.nvim/blob/master/assets/logo_small.png" alt="tauconf.nvim logo">
</p>


_tauconf.nvim_ is a customized [Neovim](https://en.wikipedia.org/wiki/Vim_(text_editor)#Neovim) configuration primarily written in [Lua](https://en.wikipedia.org/wiki/Lua_(programming_language)), aimed at optimizing development workflows. This setup includes essential plugins, a consistent color scheme, and efficient keybindings to improve productivity.

|  | **[Documentation](https://github.com/avirsaha/tauconf.nvim/wiki)** · **[Tutorials](https://github.com/avirsaha/tauconf.nvim/wiki#tutorials)** . **[Changes](https://github.com/avirsaha/tauconf.nvim/wiki#tutorials)**|
|---|---|
| **Open Source & License** | [![MIT](https://img.shields.io/github/license/avirsaha/tauconf.nvim?style=for-the-badge&color=5aad54&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/blob/main/LICENSE) [![License](https://img.shields.io/badge/license-GPLv3-green?style=for-the-badge&color=046463&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/blob/main/LICENSE) |
| **Latest Release & CI** | [![Latest release](https://img.shields.io/github/v/release/avirsaha/tauconf.nvim?style=for-the-badge&logo=starship&color=5aad54&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/releases/latest) [![Last commit](https://img.shields.io/github/last-commit/avirsaha/tauconf.nvim?style=for-the-badge&logo=starship&color=2a91d2&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/pulse) [![LuaLint](https://github.com/avirsaha/tauconf.nvim/actions/workflows/lua-lint.yaml/badge.svg?style=for-the-badge&logo=github&color=f94f9c&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/actions/workflows/lua-lint.yaml) |
| **Community & Code** | [![Stars](https://img.shields.io/github/stars/avirsaha/tauconf.nvim?style=for-the-badge&logo=starship&color=378d50&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/stargazers) [![Issues](https://img.shields.io/github/issues/avirsaha/tauconf.nvim?style=for-the-badge&logo=bilibili&color=5aad54&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim/issues) [![Repo Size](https://img.shields.io/github/repo-size/avirsaha/tauconf.nvim?color=2a91d2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=FFFFFF&labelColor=1d431f)](https://github.com/avirsaha/tauconf.nvim) |
| **Technical Info** | [![Neovim](https://img.shields.io/badge/Neovim-0.8+-brightgreen?logo=neovim&style=for-the-badge&color=378d50&logoColor=FFFFFF&labelColor=1d431f)](https://neovim.io) [![Lua](https://img.shields.io/badge/Lua-5.1-2C2D72?logo=lua&style=for-the-badge&color=5aad54&logoColor=FFFFFF&labelColor=1d431f)](https://www.lua.org/) |





## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Dependencies](#dependencies)
4. [Installation](#installation)
    - [Windows](#windows)
    - [macOS](#macos)
    - [Linux](#linux)
5. [Configuration Structure](#configuration-structure)
6. [Usage](#usage)
    - [Keybindings](#keybindings)
    - [LSP Setup](#lsp-setup)
7. [Advanced Configuration](#advanced-configuration)
8. [Backup and Restore](#backup-and-restore)
9. [Troubleshooting](#troubleshooting)
10. [FAQ](#faq)
11. [Contributing](#contributing)
12. [Credits and Acknowledgments](#credits-and-acknowledgments)
13. [License](#license)
14. [Contact](#contact)
15. [Keymaps](#keymaps)
16. [Glossary](#glossary)
17. [Changelog](#changelog)

## Introduction
<p align="center">
  <img src="https://github.com/avirsaha/tauconf.nvim/blob/master/assets/dashboard.png" alt="tauconf.nvim dashboard">
</p>

**tauconf.nvim** is my personalized Neovim configuration designed to provide a comprehensive and efficient development environment. It features a collection of essential plugins, a well-chosen color scheme, and optimized keybindings, tailored for both new and experienced users.

## Features

- **Plugins**: Curated selection of essential plugins to enhance functionality and performance.
- **Color Scheme**: `custom` for a visually appealing and consistent interface.
- **Keybindings**: Custom shortcuts for improved workflow and efficiency.
- **LSP Integration**: Advanced Language Server Protocol support for superior code editing.
- **File Explorer**: `nvim-tree` for intuitive file navigation.
- **Status Line**: `lualine.nvim` for a clean and informative status bar.
- **tree-sitter and more*

## Dependencies

### Core Requirements

- **Neovim 0.8+**: Ensure version 0.8 or later is installed.
- **Git**: Required for version control and plugin management.
- **Node.js**: Necessary for plugins like `telescope.nvim`.
- **Python3**: Needed for Python-based plugins and LSP servers.
- **GCC/Make**: Required for building some plugins (e.g., `treesitter`).
- **ripgrep**: Fast search tool used by `telescope.nvim`.
- **fd**: Efficient file searching tool.
- **grep**: Basic search tool (typically pre-installed).

### Optional Tools

- **Homebrew (macOS)**: For package management.
- **winget (Windows)**: For managing Windows packages.
- **chocolatey (Windows)**: Alternative package manager for Windows.

## Installation

### Windows

1. **Install Neovim**:
   - Using **winget**:
     ```bash
     winget install Neovim.Neovim
     ```
   - Or **chocolatey**:
     ```bash
     choco install neovim
     ```

2. **Install Dependencies**:
   - With **winget**:
     ```bash
     winget install Git.Git Nodejs.Node Python.Python ripgrep.Grep gcc make
     ```
   - Or with **chocolatey**:
     ```bash
     choco install git nodejs python ripgrep make gcc
     ```

3. **Update PATH**: Ensure Neovim and all dependencies are included in your PATH environment variable.

### macOS

1. **Install Homebrew**:
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install Neovim and Dependencies**:
   ```bash
   brew install neovim git node python3 ripgrep fd
   ```

### Linux

1. **Arch Linux**:
   ```bash
   sudo pacman -S neovim git nodejs python ripgrep fd gcc make
   ```

2. **Debian/Ubuntu**:
   ```bash
   sudo add-apt-repository ppa:neovim-ppa/stable
   sudo apt update
   sudo apt install neovim git nodejs python3 gcc make ripgrep fd-find
   ```
   *(Note: On Ubuntu, `fd` is `fd-find`. Create a symlink if necessary: `ln -s $(which fdfind) ~/.local/bin/fd`.)*

3. **Fedora**:
   ```bash
   sudo dnf install neovim git nodejs python3 ripgrep fd-find gcc make
   ```

4. **OpenSUSE**:
   ```bash
   sudo zypper install neovim git nodejs python3 ripgrep fd gcc make
   ```

5. **Gentoo**:
   ```bash
   sudo emerge -av neovim git nodejs python ripgrep fd gcc make
   ```

## Configuration Structure

The configuration is organized as follows:

```
~/.config/nvim/
├── init.lua         -- Main configuration file
├── lua/
│   ├── plugins/     -- Plugin configurations
|   |   ├── all plugin modules
│   ├── settings.lua -- General settings (e.g., tabs, appearance)
│   ├── keymaps.lua  -- Custom keybindings
|   ├── lazy-setup.lua
|   ├── health.lua
│   └── lsp/         -- LSP configurations
    |   ├── servers.lua -- Lsp config
```

## Usage

### Keybindings

- **Leader Key**: `<Space>` for custom commands.
- **File Explorer**: `<Leader>e` to toggle `nvim-tree`.
- **Quick Save**: `<Leader>w` to save the current file.
- **Split Navigation**: `Ctrl + h/j/k/l` to switch between splits.
- **Search Files**: `<Leader>ff` to open `Telescope` for file searching.

### LSP Setup

**tauconf.nvim** uses **mason.nvim** for managing LSP servers. Install new servers with:

```bash
:MasonInstall <server-name>
```

## Advanced Configuration

To further customize your setup:
- **Add Custom Plugins**: Modify `lua/plugins/plugins.lua` to include additional plugins.
- **Update Keybindings**: Edit `lua/keymaps.lua` for custom shortcuts.
- **Adjust LSP Settings**: Modify `lua/lsp/servers.lua` to fit your development needs.

## Backup and Restore

**Backup**:
- Create a backup of your configuration:
  ```bash
  cp -r ~/.config/nvim ~/.config/nvim_backup
  ```

**Restore**:
- Restore from a backup:
  ```bash
  rm -rf ~/.config/nvim
  cp -r ~/.config/nvim_backup ~/.config/nvim
  ```

## Troubleshooting

### Common Errors and Solutions

1. **Neovim Not Launching**

   **Error Message**: `command not found: nvim`

   **Solution**:
   - Verify Neovim is installed and included in your PATH.
   - Confirm installation with `nvim --version`.

2. **Plugin Installation Issues**

   **Error Message**: `Error: Plugin not found`

   **Solution**:
   - Check `lua/plugins/plugins.lua` for correct plugin names and sources.
   - Ensure network access and correct permissions.

3. **Missing Dependencies**

   **Error Message**: `command not found: <dependency>`

   **Solution**:
   - Install missing dependencies using your system's package manager.
   - Use `brew install <dependency>` on macOS or `sudo apt install <dependency>` on Ubuntu.

4. **LSP Server Not Working**

   **Error Message**: `LSP server not found`

   **Solution**:
   - Install the LSP server using `:MasonInstall <server-name>`.
   - Check `lua/lsp/servers.lua` for accurate configuration.

5. **Syntax Highlighting Issues**

   **Error Message**: `Error in treesitter configuration`

   **Solution**:
   - Ensure `treesitter` is installed and up-to-date.
   - Update parsers with `:TSUpdate`.

6. **File Explorer Not Showing Files**

   **Error Message**: `nvim-tree not showing files`

   **Solution**:
   - Verify `nvim-tree` configuration in `lua/plugins/plugins.lua`.
   - Refresh the file explorer with `<Leader>e`.

7. **Performance Issues**

   **Error Message**: `Neovim is slow`

   **Solution**:
   - Check for conflicting plugins or excessive configuration.
   - Profile startup time using `:profile` commands.

For unresolved issues, please visit the [issue tracker](https://github.com/avirsaha/tauconf.nvim/issues) or consult the [troubleshooting guide](https://github.com/yourusername/tauconf.nvim/blob/main/CONTRIBUTING.md).

## FAQ

**Q1: What is `tauconf.nvim`?**
- **A:** It is a personalized Neovim configuration that includes a curated set of plugins, keybindings, and settings to enhance the development experience.

**Q2: How can I customize my setup?**
- **A:** Modify the configuration files in `~/.config/nvim/`, such as `init.lua`, `keymaps.lua`, and `settings.lua`, to tailor the setup to your preferences.

**Q3: How do I add new plugins?**
- **A:** Update `lua/plugins/plugins.lua` with the new plugin specifications.

**Q4: What if I encounter issues during setup?**
- **

A:** Refer to the [troubleshooting section](#troubleshooting) or open an issue on the [issue tracker](https://github.com/yourusername/tauconf.nvim/issues).

## Contributing

I welcome contributions to **tauconf.nvim** to enhance the configuration for all users. Here’s how you can contribute:

1. **Report Issues**: Create an issue on the [issue tracker](https://github.com/yourusername/tauconf.nvim/issues) for bugs or feature requests.
2. **Submit Pull Requests**: Contribute code improvements or bug fixes by submitting a pull request. Use the [issue template](https://github.com/yourusername/tauconf.nvim/issues/new?template=bug_report.md) for bug reports and the [pull request template](https://github.com/yourusername/tauconf.nvim/compare) for PRs. Ensure that your changes are well-documented and tested.
3. **Provide Feedback**: Share suggestions and feedback to improve **tauconf.nvim**.

For detailed contributing guidelines, refer to the [CONTRIBUTING.md](https://github.com/yourusername/tauconf.nvim/blob/main/CONTRIBUTING.md).

## Credits and Acknowledgments

I would like to express my gratitude to the following individuals and communities for their invaluable contributions and support:

- **Neovim Contributors**: For their ongoing development and support of the Neovim project.
- **Plugin Authors**: For developing and maintaining the plugins that enhance the Neovim experience.
- **Community**: For providing feedback, suggestions, and encouragement.

Your contributions have been instrumental in creating and improving **tauconf.nvim**.

## License

This project is licensed under the MIT License. You are free to use, modify, and distribute it as needed.

## Contact

For questions or further information, please reach out via the [issue tracker](https://github.com/yourusername/tauconf.nvim/issues) or directly on GitHub.

## Keymaps


This section provides a quick reference for the custom key mappings used in this Neovim configuration. The default **leader key** is set to `\` (backslash).

###  General & Utility

| Keymap | Plugin | Description |
| :--- | :--- | :--- |
| `<leader>f` | `conform.nvim` (Formatter) | Format the current file or a selected range (in visual mode). |

---

###  Quick Navigation (Harpoon)

Harpoon allows you to quickly mark and jump between important files.

| Keymap | Action | Description |
| :--- | :--- | :--- |
| `<leader>a` | `harpoon:list():add()` | **Add** the current file to the harpoon list. |
| `<C-e>` | `harpoon.ui:toggle_quick_menu()` | **Toggle** the quick-menu list for harpoon. |
| `<C-h>` | `harpoon:list():select(1)` | Jump to the **first** file in the list. |
| `<C-t>` | `harpoon:list():select(2)` | Jump to the **second** file in the list. |
| `<C-n>` | `harpoon:list():select(3)` | Jump to the **third** file in the list. |
| `<C-s>` | `harpoon:list():select(4)` | Jump to the **fourth** file in the list. |
| `<C-S-P>` | `harpoon:list():prev()` | Jump to the **previous** file in the list. |
| `<C-S-N>` | `harpoon:list():next()` | Jump to the **next** file in the list. |

---

###  Git Integration

This setup uses a combination of `vim-fugitive` (for full Git commands) and `gitsigns.nvim` (for hunk-specific operations).

#### **Fugitive (Full Git Commands)**

| Keymap | Command | Description |
| :--- | :--- | :--- |
| `<leader>gs` | `:G<CR>` | Open the **Git status** window. |
| `<leader>gc` | `:Gcommit<CR>` | Run **Git commit**. |
| `<leader>gp` | `:Gpush<CR>` | Run **Git push**. |
| `<leader>gl` | `:Glog<CR>` | Run **Git log**. |
| `<leader>gd` | `:Gdiff<CR>` | Run **Git diff**. |

#### **Gitsigns (Hunk Operations)**

| Keymap | Command | Description |
| :--- | :--- | :--- |
| `<leader>gs` | `:Gitsigns stage_hunk<CR>` | **Stage** the hunk at the cursor (Overlaps with Fugitive's status in normal mode). |
| `<leader>gu` | `:Gitsigns undo_stage_hunk<CR>` | **Undo staging** of the hunk at the cursor. |
| `<leader>gp` | `:Gitsigns preview_hunk<CR>` | **Preview** the hunk contents. |
| `<leader>gd` | `:Gitsigns diffthis<CR>` | **Diff** the current file against the Git index. |

---

####  Diff Viewing (`diffview.nvim`)

| Keymap | Context | Command | Description |
| :--- | :--- | :--- | :--- |
| `<leader>do` | Normal | `DiffviewOpen` | **Open** the Diffview window. |
| `<leader>dc` | Normal | `DiffviewClose` | **Close** the Diffview window. |
| `<leader>dp` | Normal/File Panel | `DiffviewFocusFiles` | **Focus** on the file list panel. |
| `<leader>dh` | File History Panel | `DiffviewFileHistory` | Show the **file history** (log). |

---

###  Completion and Snippets (`nvim-cmp`, `LuaSnip`, `nvim-autopairs`)

These mappings are active in **Insert Mode** (`i`) and **Snippet Mode** (`s`).

| Keymap | Mode | Component | Description |
| :--- | :--- | :--- | :--- |
| `<C-b>` | Insert | `nvim-cmp` | Scroll documentation **up** by 4 lines. |
| `<C-f>` | Insert | `nvim-cmp` | Scroll documentation **down** by 4 lines. |
| `<C-Space>` | Insert | `nvim-cmp` | Manually **trigger completion**. |
| `<C-e>` | Insert | `nvim-cmp` | **Abort** completion. |
| `<CR>` (Enter) | Insert | `nvim-cmp` | **Accept** the currently selected completion item. |
| `<Tab>` | Insert, Snippet | `nvim-cmp`/`LuaSnip` | **Select next item** (completion) OR **Expand/Jump to next placeholder** (snippet). |
| `<S-Tab>` (Shift+Tab) | Insert, Snippet | `nvim-cmp`/`LuaSnip` | **Select previous item** (completion) OR **Jump to previous placeholder** (snippet). |
| `<M-e>` (Alt+E) | Insert | `nvim-autopairs` | **Fast wrap** a selection with a matching pair. |
| `l` | Insert (during fast-wrap) | `nvim-autopairs` | **Complete** the fast wrap operation. |
## Glossary

- **LSP**: [Language Server Protocol](https://microsoft.github.io/language-server-protocol/) - a protocol that provides language-specific features such as code completion and diagnostics.
- **PPA**: [Personal Package Archive](https://wiki.ubuntu.com/PersonalPackageArchive) - a software repository used by Ubuntu-based distributions.
- **Homebrew**: [A package manager for macOS](https://brew.sh) that simplifies the installation of software.
- **winget**: [A command-line tool for managing Windows software packages](https://learn.microsoft.com/en-us/windows/package-manager/winget/).
- **chocolatey**: [A package manager for Windows](https://chocolatey.org) that facilitates software installation and management.
- **ripgrep**: [A line-oriented search tool](https://github.com/BurntSushi/ripgrep) that recursively searches your current directory for a regex pattern.
- **fd**: [A fast and user-friendly alternative to `find`](https://github.com/sharkdp/fd) for locating files and directories.

## Changelog

For detailed updates and changes to **tauconf.nvim**, refer to the [CHANGELOG.md](https://github.com/yourusername/tauconf.nvim/blob/main/CHANGELOG.md).

---


