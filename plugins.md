# 插件

[参考](https://github.com/ayamir/nvimdots/wiki/Plugins)

```sh
# 插件的实际安装路径
ls ~/.local/share/nvim/site/lazy

:help [插件名]
```

## 自带的 Scopes

### Completion

- **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Neovim's native LSP configuration
  - **[creativenull/efmls-configs-nvim](https://github.com/creativenull/efmls-configs-nvim)**: `efm-langserver` config set
  - **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)**: package manager for LSP, DAP servers, linters and formatters
  - **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**: using `nvim-lspconfig` with `mason.nvim`
  - **[WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)**: install and upgrade third party tools automatically
  - **[glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)**: better LSP functions
  - **[ray-x/lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)**: show signature when completing function parameters
- **[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: auto completion plugin for Neovim
  - **[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)**: snippets completion engine for `nvim-cmp`
    - **[rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)**: snippets source for `LusSnip`
  - **[onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)**: VSCode-like pictograms for completion items
  - **[lukas-reineke/cmp-under-comparator](https://github.com/lukas-reineke/cmp-under-comparator)**: better completion sorting for underline items in `nvim-cmp`
  - **[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)**: luasnip source for `nvim-cmp`
  - **[hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)**: lsp source for `nvim-cmp`
  - **[hrsh7th/cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)**: lua source for `nvim-cmp`
  - **[andersevenrud/cmp-tmux](https://github.com/andersevenrud/compe-tmux)**: tmux source for `nvim-cmp`
  - **[hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)**: path source for `nvim-cmp`
  - **[f3fora/cmp-spell](https://github.com/f3fora/cmp-spell)**: spell source for `nvim-cmp` based on vim's `spellsuggest`.
  - **[ray-x/cmp-treesitter](https://github.com/ray-x/cmp-treesitter)**: treesitter source for `nvim-cmp`
  - **[hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)**: buffer source for `nvim-cmp`
  - **[kdheepak/cmp-latex-symbols](https://github.com/kdheepak/cmp-latex-symbols)**: latex symbols source for `nvim-cmp`
- **[zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)**: lua port of `copilot.vim`
  - **[zbirenbaum/copilot-cmp](https://github.com/zbirenbaum/copilot-cmp)**: copilot source for `nvim-cmp`

### Editor

- **[rainbowhxch/accelerated-jk.nvim](https://github.com/rainbowhxch/accelerated-jk.nvim)**: accelerated `j`/`k`
- **[m4xshen/autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)**: auto pairs & closes brackets
- **[rmagatti/auto-session](https://github.com/rmagatti/auto-session)**: session management
- **[max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)**: replace `esc` with `jk|jj`
- **[LunarVim/bigfile.nvim](https://github.com/LunarVim/bigfile.nvim)**: provide support for editing large files
- **[ojroques/nvim-bufdel](https://github.com/ojroques/nvim-bufdel)**: close buffer gently with `bufferline.nvim`
- **[rhysd/clever-f.vim](https://github.com/rhysd/clever-f.vim)**: extended `f`, `F`, `t` and `T` key mappings for Neovim
- **[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)**: better comment
- **[sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim)**: git diff view
- **[junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)**: easy alignment
- **[phaazon/hop.nvim](https://github.com/phaazon/hop.nvim)**: better motion jumping
- **[RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)**: highlight current cursor word
- **[luukvbaal/stabilize.nvim](https://github.com/luukvbaal/stabilize.nvim)**: stabilize buffer content on window toggle events
- **[romainl/vim-cool](https://github.com/romainl/vim-cool)**: auto-clear highlight after search
- **[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: super powerful code highlighter
  - **[nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)**: move between textobjects
  - **[p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)**: rainbow brackets
  - **[JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)**: context-based comment
  - **[mfussenegger/nvim-ts-hint-textobject](https://github.com/mfussenegger/nvim-ts-hint-textobject)**: select textobject like `hop.nvim`
  - **[andymass/vim-matchup](https://github.com/andymass/vim-matchup)**: better matchup for `%`
  - **[windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)**: faster `vim-closetag`
  - **[NvChad/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)**: display detected color
  - **[abecodes/tabout.nvim](https://github.com/abecodes/tabout.nvim)**: tabout between bracket

### Lang

- **[fatih/vim-go](https://github.com/fatih/vim-go)**: plugin for golang
- **[simrat39/rust-tools.nvim](https://github.com/simrat39/rust-tools.nvim)**: plugin for rust
- **[Saecki/crates.nvim](https://github.com/Saecki/crates.nvim)**: manage `crates.io` dependencies
- **[iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)**: render markdown preview
- **[chrisbra/csv.vim](https://github.com/chrisbra/csv.vim)**: plugin for csv

### Tool

- **[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)**: git operations inside neovim, by legendary tpope
- **[folke/which-key.nvim](https://github.com/folke/which-key.nvim)**: keymap hints
- **[nvim-tree/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)**: better `netrw`
- **[ibhagwan/smartyank.nvim](https://github.com/ibhagwan/smartyank.nvim)**: provide tmux/OSC52 clipboard support
- **[michaelb/sniprun](https://github.com/michaelb/sniprun)**: run code snippet quickly
- **[akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)**: better terminal
- **[folke/trouble.nvim](https://github.com/folke/trouble.nvim)**: show code errors
- **[gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)**: command mode completions
  - **[romgrk/fzy-lua-native](https://github.com/romgrk/fzy-lua-native)**: `fzy` support for `wilder.nvim`
- **[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: general fuzzy filder 文件搜索，有浮窗预览
  - **[nvim-tree/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)**: nerd font icons
  - **[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)**: required by `telescope.nvim`
  - **[nvim-lua/popup.nvim](https://github.com/nvim-lua/popup.nvim)**: required by `telescope.nvim`
  - **[debugloop/telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim)**: fuzzy find undo history
  - **[ahmedkhalf/project.nvim](https://github.com/ahmedkhalf/project.nvim)**: manage projects
  - **[nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)**: `fzf` search
  - **[nvim-telescope/telescope-frecency.nvim](https://github.com/nvim-telescope/telescope-frecency.nvim)**: frequent and recent file jump
    - **[kkharji/sqlite.lua](https://github.com/tami5/sqlite.lua)**: `SQLite` wrapper for Neovim
  - **[jvgrootveld/telescope-zoxide](https://github.com/nvim-telescope/telescope-zoxide)**: jump to directory recorded by `zoxide`
  - **[nvim-telescope/telescope-live-grep-args.nvim](https://github.com/nvim-telescope/telescope-live-grep-args.nvim)**: supprt args when using `live_grep`
- **[mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)**: Debug Adapter Protocol client implementation for Neovim
  - **[rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)**: UI for DAP

### UI

- **[goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)**: better startup page 启动界面
- **[akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)**: tab and buffer management
- **[catppuccin/nvim](https://github.com/catppuccin/nvim)**: catppuccin theme
- **[sainnhe/edge](https://github.com/sainnhe/edge)**: edge theme
- **[j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)**: show lsp real-time status
- **[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: show git status in `statuscolum`
- **[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)**: show indent with different level
- **[nvim-lualine/lualine.nvim](https://github.com/hoob3rt/lualine.nvim)**: minimal, fast but customizable `statusline`
- **[zbirenbaum/neodim](https://github.com/zbirenbaum/neodim)**: dimming the unused symbols
- **[karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)**: smooth scroll
- **[shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim)**: nord theme
- **[rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)**: animated notify
- **[dstein64/nvim-scrollview](https://github.com/dstein64/nvim-scrollview)**: scroll-able scrollbar
- **[folke/paint.nvim](https://github.com/folke/paint.nvim)**: easily add additional highlights to buffers
- **[edluffy/specs.nvim](https://github.com/edluffy/specs.nvim)**: hint cursor place when jump multiple lines

# 插件介绍

## Completion

### nvim-lspconfig

Quickstart configs for Nvim LSP
[lsp 列表](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#clangd)

```sh
# 1. 安装服务 clangd
npm i -g pyright
# 2. Add the language server setup to your init.lua.
require'lspconfig'.pyright.setup{}
```

`:LspInfo` shows the status of active and configured language servers.
`:LspStart <config_name>` Start the requested server name.
`:LspStop <client_id>` Defaults to stopping all buffer clients.
`:LspRestart <client_id>` Defaults to restarting all buffer clients.

#### efmls-configs-nvim

An unofficial collection of linters and formatters configured for efm-langserver to work with the built-in `nvim-lsp`.

[efm-langserver](https://github.com/mattn/efm-langserver): General purpose Language Server that can use specified error message format generated from specified command. This is useful for editing code with linter.

#### mason

Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage **LSP servers, DAP servers, linters, and formatters**.
Packages are installed in Neovim's data directory（~/.local/share/nvim）
Executables are linked to a single `bin/ directory
recommended:

- LSP: nvim-lspconfig & mason-lspconfig.nvim
- DAP: nvim-dap
- Linters: null-ls.nvim or nvim-lint
- Formatters: null-ls.nvim or formatter.nvim

```sh
:MasonInstall clangd
rm ~/.local/state/nvim/mason.log

:h mason-how-to-use-packages
:h mason-quickstart
:Mason - opens a graphical status window
:MasonUpdate - updates all managed registries
:MasonInstall <package> ... - installs/re-installs the provided packages
:MasonUninstall <package> ... - uninstalls the provided packages
:MasonUninstallAll - uninstalls all packages
:MasonLog - opens the mason.nvim log file in a new tab window
```

#### mason-lspconfig.nvim

`mason-lspconfig` bridges `mason.nvim` with the `lspconfig` plugin - making it easier to use both plugins together.

```sh
:help mason-lspconfig.nvim
:h mason-lspconfig-introduction

:LspInstall [<server>...] - installs the provided servers
:LspUninstall <server> ... - uninstalls the provided servers
```

#### mason-tool-installer

Install and upgrade third party tools automatically

```sh
:MasonToolsInstall - only installs tools that are missing or at the incorrect version
:MasonToolsUpdate - install missing tools and update already installed tools
```

#### lspsaga.nvim

Neovim lsp **enhance** plugin.
All highlight groups can be found in `highlight.lua`

```sh
:h lspsaga
:Lspsaga lsp_finder : show the definition, reference and implementation
:Lspsaga peek_definition :  shows the target file in an editable floating window.
:Lspsaga goto_definition
:Lspsaga code_action
:Lspsaga Lightbulb  ： When there are possible code actions to be taken, a lightbulb icon will be shown.
:Lspasga hover_doc
:Lspsaga diagnostic_jump_next ： Jumps to next diagnostic position and show a beacon highlight.
:Lspsaga show_diagnostics
:Lspsaga rename
:Lspsaga outline
:Lspsaga incoming_calls / outgoing_calls
:Lspsaga symbols in winbar
:Lspsaga symbols in a custom winbar/statusline
:Lspsaga term_toggle
:Lspsaga beacon
:Lspsaga UI
```

#### lsp_signature.nvim

Show function signature when you type

two keymaps available in config:

- toggle_key: Toggle the signature help window. It manual toggle config.floating_windows on/off
- select_signature_key: Select the current signature when mulitple signature is avalible.

### nvim-cmp

A completion plugin for neovim coded in Lua.

#### LuaSnip

Snippet Engine for Neovim written in Lua.
Snippets that make use of the entire functionality of this plugin have to be defined in Lua (but 95% of snippets can be written in lsp-syntax).

#### friendly-snippets

Snippets collection for a set of different programming languages for faster development.

The only goal is to have one community driven repository for all kinds of snippets in all programming languages, this way you can have it all in one place.

#### lspkind.nvim

This tiny plugin adds vscode-like pictograms to neovim built-in lsp:

#### cmp-under-comparator

A tiny function for nvim-cmp to better sort completion items that start with one or more underlines.

#### cmp_luasnip

luasnip completion source for nvim-cmp

#### cmp-tmux

Tmux completion source for nvim-cmp and nvim-compe

## Editor

### auto-session

Auto Session takes advantage of Neovim's existing session management capabilities to provide seamless automatic session management.

Behaviour

- 1.When starting nvim with no arguments, auto-session will try to restore an existing session for the current cwd if one exists.
- 2.When starting `nvim .` with some argument, auto-session will do nothing.
- 3.Even after starting nvim with an argument, a session can still be manually restored by running `:RestoreSession`
- 4.Any session saving and restoration takes into consideration the current working directory cwd.
- 5.When piping to nvim, e.g: `cat myfile | nvim`, auto-session behaves like #2.

### clever-f.vim

clever-f.vim extends f, F, t and T mappings for more convenience. Instead of ;, f is available to repeat after you type f{char} or F{char}. F after f{char} and F{char} is also available to undo a jump. t{char} and T{char} are ditto. This extension makes a repeat easier and makes you forget the existence of ;. You can use ; for other key mapping. In addition, this extension provides many convenient features like target character highlighting, smart case matching and so on.

### Comment.nvim

Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

Features

- Supports treesitter.
- Supports commentstring. Read :h comment.commentstring
- Supports line (//) and block (/\*\*/) comments
- Dot (.) repeat support for gcc, gbc and friends
- Count support for [count]gcc and [count]gbc
- Left-right (gcw gc$) and Up-Down (gc2j gc4k) motions
- Use with text-objects (gci{ gbat)
- Supports pre and post hooks
- Ignore certain lines, powered by Lua regex

### diffview.nvim

Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

```sh
:DiffviewOpen [git rev] [options] [ -- {paths...}]
```

### hop.nvim

Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible.

[Hop commands](https://github.com/phaazon/hop.nvim/wiki/Commands)

### vim-easy-align

An alignment rule is a predefined set of options for common alignment tasks, which is identified by a single character,
such as `<Space>, =, :, ., |, &, #, and ,`

### vim-illuminate

Vim plugin for automatically highlighting other uses of the word under the cursor using either LSP, Tree-sitter, or regex matching.

### nvim-treesitter

The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and
to provide some basic functionality such as highlighting based on it:

Tree-sitter is a parser generator tool and an incremental parsing library. It can build a concrete syntax tree for a source file and
efficiently update the syntax tree as the source file is edited. Tree-sitter aims to be:

- General enough to parse any programming language
- Fast enough to parse on every keystroke in a text editor
- Robust enough to provide useful results even in the presence of syntax errors
- Dependency-free so that the runtime library (which is written in pure C) can be embedded in any application

```sh
:TSBufEnable {module} " enable module on current buffer
:TSBufDisable {module} " disable module on current buffer
:TSEnable {module} [{ft}] " enable module on every buffer. If filetype is specified, enable only for this filetype.
:TSDisable {module} [{ft}] " disable module on every buffer. If filetype is specified, disable only for this filetype.
:TSModuleInfo [{module}] " list information about modules state for each filetype
:TSInstall <language_to_install>
```

## Lang

### markdown-preview.nvim

Preview markdown on your modern browser with synchronised scrolling and flexible configurations

```sh
:MarkdownPreview
:MarkdownPreviewStop
```

## Tool

### which-key

Create key bindings that stick. displays a popup with possible keybindings of the command you started typing.

When the WhichKey popup is open, you can use the following key bindings (they are also displayed at the bottom of the screen):

- hit one of the keys to open a group or execute a key binding
- `<esc>` to cancel and close the popup
- `<bs>` go up one level
- `<c-d>` scroll down
- `<c-u>` scroll up

```sh
:WhichKey " show all mappings
:WhichKey <leader> " show all <leader> mappings
:WhichKey <leader> v " show all <leader> mappings for VISUAL mode
:WhichKey '' v " show ALL mappings for VISUAL mode
```

### nvim-tree

[wiki](https://github.com/nvim-tree/nvim-tree.lua/wiki)

Features:

- Automatic updates
- File type icons
- Git integration
- Diagnostics integration: LSP and COC
- (Live) filtering
- Cut, copy, paste, rename, delete, create
- Highly customisable

```sh
:NvimTreeToggle Open or close the tree. Takes an optional path argument.
:NvimTreeFocus Open the tree if it is closed, and then focus on the tree.
:NvimTreeFindFile Move the cursor in the tree for the current buffer, opening folders if needed.
:NvimTreeCollapse Collapses the nvim-tree recursively.
:help nvim-tree.on_attach
:help nvim-tree-mappings
```

# 待补充

symbols-outline：文件大纲，浮窗
基于 LSP+cmp 的模糊查找自动补全
[A pretty epic NeoVim setup](https://github.com/leslie255/nvim-config)
