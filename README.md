# 简介

fork [A well configured and structured Neovim.](https://github.com/ayamir/nvimdots)
`init.lua` is the config entry point.
I use [lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins.
Chinese introduction is [here](https://zhuanlan.zhihu.com/p/382092667).

Features:

- **Fast.** Less than **30ms** to start (Depends on SSD and CPU, tested on Zephyrus G14 2022 version).
- **Simple.** Run out of the box.
- **Modern.** Pure `lua` config.
- **Modular.** Easy to customize.
- **Powerful.** Full functionality to code.

# ubuntu 20.04 安装记录

```sh
########### nvim 安装
# https://github.com/neovim/neovim/releases/tag/stable 先下载最新版本
# wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
###########

########### node.js 安装
# 先查看需要安装的版本
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# 默认仓库换成在国内的镜像
npm config set registry https://registry.npm.taobao.org
sudo npm install -g neovim
sudo npm install -g yarn

###########

############ 安装 Python3 环境
sudo apt install  -y  python3 python3-pip
python3 -m pip install --user --upgrade pynvim
############

############ 插件使用依赖
sudo apt install -y ripgrep lldb unzip
sudo apt install -y libsqlite3-dev

# zoxide fd nerd-fonts-jetbrains-mono 没有
# mason install clang-format required
sudo apt install -y python3-venv
############

# 安装前先配置好github 的ssh 秘钥
bash -c "$(wget -O- https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.sh)"
```

[Wiki: Prerequisites](https://github.com/ayamir/nvimdots/wiki/Prerequisites) 记录：

```sh
# lazygit required by tui git operations
# ripgrep required by telescope word search engine
# zoxide required by telescope-zoxide
# sqlite required by telescope-frecency
# fd required by telescope file search engine
# yarn required by markdown preview
# nerd-fonts-jetbrains-mono required by devicons and neovide font
# lldb for lldb-vscode required by debug c/cpp/rust program
# nvm for node version manager
# make required by fzf
# unzip required by mason
# neovim version >= 0.7
```

## 问题
`:checkhealth`，检查问题
[常见问题解决方案](https://github.com/ayamir/nvimdots/wiki/Issues)

# 使用

使用 telescope 打开文件开始编辑，默认的`<leader>`键为空格
测试启动时间：[rhysd/vim-startuptime](https://github.com/rhysd/vim-startuptime)

## 搜索

搜索功能基于[ripgrep](https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md)，并支持其命令行的参数

- 怎么在当前项目目录下全局搜索某个符号
  - 当前的项目路径会在`lualine`中实时显示
  - 快捷键`<leader> fw` 搜索符号

## lsp

`<leader>li>`可以打开 LspInfo 窗口

# Keybindings

[参考](https://github.com/ayamir/nvimdots/wiki/Keybindings)

# 插件

[插件查看](https://github.com/ayamir/nvimdots/wiki/Plugins)

## 插件更新

<leader>ps 同步所有插件
插件实际的安装路径在 `~/.local/share/nvim/site/lazy`
出现问题，那就在 Sync 之后将光标移动到安装失败那一行，按下回车看看相应的错误日志，根据日志查看[issue](https://github.com/ayamir/nvimdots/issues)

# snippets

copy `friendly-snippets's` `package.json` to `snips` directory

# ❤️ Thanks to

- [ayamir](https://github.com/ayamir)
- [Jint-lzxy](https://github.com/Jint-lzxy)
- [CharlesChiuGit](https://github.com/CharlesChiuGit)
- [glepnir/nvim](https://github.com/glepnir/nvim)
