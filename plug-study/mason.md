# 简介
[mason.nvim](https://github.com/williamboman/mason.nvim) is a Neovim plugin that allows you to easily manage external editor tooling 
such as LSP servers, DAP servers, linters, and formatters through a single interface

Executables are linked to a single `bin/` directory, which mason.nvim will add to Neovim's PATH during setup, 
allowing seamless access from Neovim builtins 

The following plugins are recommended:
+ LSP: lspconfig & mason-lspconfig.nvim
+ DAP: nvim-dap
+ Linters: null-ls.nvim or nvim-lint
+ Formatters: null-ls.nvim or formatter.nvim

# 命令

```sh
:h mason-commands

:Mason - opens a graphical status window
:MasonInstall <package> ... - installs/reinstalls the provided packages
:MasonUninstall <package> ... - uninstalls the provided packages
:MasonUninstallAll - uninstalls all packages
:MasonLog - opens the mason.nvim log file in a new tab window
```