# README

Neovim config adapted from [this YouTube video](https://www.youtube.com/watch?v=KYDG3AHgYEs)

## Setup

1. Remove your existing ~/.config/nvim directory.
2. Clone this git repo into your ~/.config directory.
3. Run these additional setup steps:
   ```bash
   npm install -g tree-sitter-cli   # for treesitter plugin
   sudo apt install ripgrep         # for telescope.nvim
   sudo apt install python3.11-venv # for python-lsp-server in your lsp config
   ```
4. Run neovim to load lazy.nvim and all the other plugins.
   - Google to resolve some errors, if any.
     - In case clangd failed installing for some reason, download and install llvm in your system.
