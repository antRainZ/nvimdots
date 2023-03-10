# 简介
[A file explorer tree for neovim written in lua](https://github.com/nvim-tree/nvim-tree.lua)

# 快捷键绑定

```lua
-- plug-study/nvim-tree.md
-- Plugin: nvim-tree
["n|<C-n>"] = map_cr("NvimTreeToggle"):with_noremap():with_silent():with_desc("filetree: Toggle"),
["n|<leader>nf"] = map_cr("NvimTreeFindFile"):with_noremap():with_silent():with_desc("filetree: Find file"),
["n|<leader>nr"] = map_cr("NvimTreeRefresh"):with_noremap():with_silent():with_desc("filetree: Refresh"),
```