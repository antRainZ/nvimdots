# LSP server start failed
+ You need to use the latest LTS version (such as v16.13.2) to make sure LSP installed from npm works normally.
+ Relevant debug info is located in ~/.cache/nvim/lsp.log.
+ You can use tail ~/.cache/nvim/lsp.log to check latest error info.

# Change dashboard startup image
+ Prepare your original image.
+ Use ascii-image-converter convert it to ascii image.
+ Replace content of dashboard.section.header.val defined in lua/modules/configs/ui/alpha.lua with your ascii image.
+ Resatrt nvim.

# Debug for c/cpp
Make sure first use g++ or clang++ with -g flag to get executable a.out file.

# Remove nvimdots

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

# LSP servers don't autostart.
Please check this [file](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) to make sure your directory can be detected as a working directory.

For example (gopls):

Your root directory need a go.mod and your .go file need to be created first. Then LSP will autostart when you edit .go file next time.

# 图标乱码
需要把终端字体改成[Nerd Font字体](https://github.com/ryanoasis/nerd-fonts)
终端推荐
+ [linux平台kitty](https://github.com/kovidgoyal/kitty)
+ [微软官方终端](https://github.com/microsoft/terminal)
+ [A GPU-accelerated cross-platform terminal emulator and multiplexer](https://github.com/wez/wezterm)

```sh
#查看已安装的字体
fc-list | grep Nerd

#查看已安装的中文字体
fc-list :lang=zh

wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/SourceCodePro.zip
sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro
cd /usr/share/fonts/SourceCodePro
# 生成核心字体信息
sudo mkfontscale
# 生成字体文件夹
sudo mkfontdir 
# 刷新系统字体缓存
sudo fc-cache -fv 
```

[WindTerm 终端字体修改](https://github.com/kingToolbox/WindTerm/)
打开`Session->Preferences->Settings->font`
选择字体比如 `SauceCodePro Nerd Font Mono `，并关闭 `Perfer theme fonts`

```sh
# 或者在 windterm目录修改配置文件
vim global/theme/dige-black/gui.theme
QWidget {
	font-family: "Roboto Mono", "Fira Code", "$(SystemFonts)";
	font-size: 9pt;
	background-color: #1c1c1c;
	color: #bbbbbb;
}
```

# mason install clangd

:MasonInstall clangd 一直显示 Installing
修改 `init.lua`
```lua
-- https://github.com/williamboman/mason.nvim/blob/main/doc/mason.txt
-- 添加调试信息
	require("mason").setup {
        log_level = vim.log.levels.DEBUG
    }
-- 并修改 lua/core/settings.lua 注释其他的干扰项
```

```sh
rm ~/.local/state/nvim/mason.log

# Mason 安装插件位置

:MasonLog 
[DEBUG 2023年02月25日 星期六 13时58分57秒] ...vim/site/lazy/mason.nvim/lua/mason-core/package/init.lua:104: Handle InstallHandle(package=Package(name=clangd), state=ACTIVE) already exist for package Package(name=clangd)
[DEBUG 2023年02月25日 星期六 13时59分58秒] ...are/nvim/site/lazy/mason.nvim/lua/mason-core/process.lua:148: Job pid=296517 exited with exit_code=52, signal=0
[DEBUG 2023年02月25日 星期六 13时59分58秒] ...are/nvim/site/lazy/mason.nvim/lua/mason-core/process.lua:116: Spawning cmd="wget", spawn_opts={
  args = { "--header=User-Agent: mason.nvim (+https://github.com/williamboman/mason.nvim)", "-nv", "-o", "/dev/null", "-O", "/home/wxg/.local/share/nvim/mason/.packages/clangd/archive.zip", "--method=GET", "https://github.com/clangd/clangd/releases/download/15.0.6/clangd-linux-15.0.6.zip" }
}
[DEBUG 2023年02月25日 星期六 13时59分58秒] ...are/nvim/site/lazy/mason.nvim/lua/mason-core/process.lua:162: Spawned with pid 296570

[DEBUG 2023年02月25日 星期六 14时06分34秒] ...vim/site/lazy/mason.nvim/lua/mason-core/package/init.lua:104: Handle InstallHandle(package=Package(name=clangd),
 state=ACTIVE) already exist for package Package(name=clangd)
[ERROR 2023年02月25日 星期六 14时07分14秒] ...m/site/lazy/mason.nvim/lua/mason-core/installer/init.lua:192: Installation failed for Package(name=clangd)
 error="Installation was aborted."
[DEBUG 2023年02月25日 星期六 14时07分14秒] ...al/share/nvim/site/lazy/mason.nvim/lua/mason-core/fs.lua:47: fs: rmrf /home/wxg/.local/share/nvim/mason/.packages/clangd
[DEBUG 2023年02月25日 星期六 14时07分14秒] ...site/lazy/mason.nvim/lua/mason-core/installer/linker.lua:43: Unlinking Package(name=clangd)

# 查看安装的
ls /home/wxg/.local/share/nvim/mason/bin/
ls /home/wxg/.local/share/nvim/mason/packages/

# 临时文件
ls /home/wxg/.local/share/nvim/mason/.packages/
# 下载识别
ls -lh /home/wxg/.local/share/nvim/mason/.packages/clangd/
总用量 0
-rw-rw-r-- 1 wxg wxg 0 2月  25 14:12 archive.zip
# 开始手动下载
cd ~/.local/share/nvim/mason/.packages/clangd/
# 基本是网络的原理
wget -O ~/.local/share/nvim/mason/.packages/clangd/archive.zip \
	https://github.com/clangd/clangd/releases/download/15.0.6/clangd-linux-15.0.6.zip


# 手动下载后解压
unzip -d ~/.local/share/nvim/mason/packages/clangd-linux-15.0.6.zip ~/Downloads/clangd-linux-15.0.6.zip
mv clangd-linux-15.0.6.zip clangd

# link
ls -l ~/.local/share/nvim/mason/bin/ 
bash-language-server -> /home/wxg/.local/share/nvim/mason/packages/bash-language-server/node_modules/.bin/bash-language-server
lrwxrwxrwx 1 wxg wxg  63 2月  24 22:24 black -> /home/wxg/.local/share/nvim/mason/packages/black/venv/bin/black

# 注意需要使用全路径
ln -s ~/.local/share/nvim/mason/packages/clangd/bin/clangd  ~/.local/share/nvim/mason/bin/clangd
```