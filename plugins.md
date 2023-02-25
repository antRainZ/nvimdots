# 插件
[参考](https://github.com/ayamir/nvimdots/wiki/Plugins)

```sh
# 插件的实际安装路径
ls ~/.local/share/nvim/site/lazy
```

## 自带的Scopes

### Completion

- **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Neovim's native LSP configuration  
	- **[creativenull/efmls-configs-nvim](https://github.com/creativenull/efmls-configs-nvim)**: `efm-langserver` config set  
	- **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)**:  package manager for LSP, DAP servers, linters and formatters  
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
	- **[f3fora/cmp-spell](https://github.com/f3fora/cmp-spell)**: spell source for `nvim-cmp`  
	- **[ray-x/cmp-treesitter](https://github.com/ray-x/cmp-treesitter)**: treesitter source for `nvim-cmp`  
	- **[hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)**: buffer source for `nvim-cmp`  
	- **[kdheepak/cmp-latex-symbols](https://github.com/kdheepak/cmp-latex-symbols)**: latex symbols source for `nvim-cmp`  
- **[zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)**: lua port of `copilot.vim`  
	- **[zbirenbaum/copilot-cmp](https://github.com/zbirenbaum/copilot-cmp)**: copilot source for `nvim-cmp`

### Editor

- **[rainbowhxch/accelerated-jk.nvim](https://github.com/rainbowhxch/accelerated-jk.nvim)**: accelerated `j`/`k`  
- **[m4xshen/autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)**: auto pairs & closes brackets  
- **[rmagatti/auto-session](https://github.com/rmagatti/auto-session)**: session management  
- **[max397574/better-escape.nvim](https://github.com/max397574/better-escape.nvim)**: replace `esc` with `jk`  
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
- **[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: general fuzzy filder  文件搜索，有浮窗预览
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

# mason

```sh
:MasonInstall clangd
rm ~/.local/state/nvim/mason.log 
```

# mason-lspconfig.nvim
`mason-lspconfig` bridges `mason.nvim` with the `lspconfig` plugin - making it easier to use both plugins together.
```sh
:help mason-lspconfig.nvim
:h mason-lspconfig-introduction

:LspInstall [<server>...] - installs the provided servers
:LspUninstall <server> ... - uninstalls the provided servers
```

# 待补充
symbols-outline：文件大纲，浮窗
基于 LSP+cmp 的模糊查找自动补全
[A pretty epic NeoVim setup](https://github.com/leslie255/nvim-config)