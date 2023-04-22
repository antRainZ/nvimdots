## Structure

`init.lua` is the kernel config file. It requires configuration in `lua` directory.

- `lua` directory contains 3 parts.
  - `core` directory contains base configuration of neovim.
  - `keymap` directory contains keybindings of plugins.
  - `modules` directory contains three main subfolders.
    - `plugins/{scope}.lua` contains plugins within the scope.
    - `configs/{scope}/` folder contains plugin settings according to the scope.
    - `utils/icons.lua` contains icons used for plugin settings. See below for details.
    - `utils/init.lua` contains utility functions used by plugins. See below for details.

    - **{scope} definition**
      - `completion` contains plugins about code completion.
      - `editor` contains plugins which improve the default ability of vanilla `Neovim`.
      - `lang` contains plugins relates to certain programming language.
      - `tool` contains plugins using external tools and change the default layout which provides new ability to `Neovim`.
      - `ui` contains plugins render the interface without any actions after user fires `Neovim`.

- The `modules` default file tree is as follows:
```console
init.lua
   └── lua/
       └── modules/
           ├── plugins/
           │   ├── completion.lua
           │   ├── editor.lua
           │   ├── lang.lua
           │   ├── tool.lua
           │   └── ui.lua
           ├── configs/
           │   ├── completion/
           │   ├── editor/
           │   ├── lang/
           │   ├── tool/
           │   └── ui/
           └── utils/
               ├── icons.lua
               └── init.lua
```

## How to customize

**Note:** `lua/modules/configs` is in the search path of `require`. So instead of requiring `modules.configs.completion.lsp` you should use `completion.lsp` instead.

### Add a new plugin

1. make a sub-directory called `custom` under `configs/` and a file called `custom.lua` under `plugins/`. `custom.lua` should contain the following initial content:
```lua
local custom = {}

return custom
```

2. add this new plugin following the format that other plugins are configured in `plugins/` and `configs/`. Specifically:

    - Add a new entry in `plugins/custom.lua` _(See below for an example)_

    - Create a new `.lua` file with plugin name as the filename under `configs/custom/` _(can be slightly different, as long as it can be understood by you)_.

Here is an example:

- `lua/modules/plugins/custom.lua`
```lua
local custom = {}

custom["folke/todo-comments.nvim"] = {
	lazy = true,
	event = "BufRead",
	config = require("custom.todo-comments"), -- Require that config
}

return custom
```

- `lua/modules/configs/custom/todo-comments.lua`
```lua
return function() -- This file MUST return a function accepting no parameter and has no return value
	require("todo-comments").setup()
end
```

_(If you need help, feel free to open an issue.)_

### Remove a plugin

1. Determine this plugin belongs to what scope (\[custom\], completion, editor, lang, tools,
     ui).

2. Remove its config located in corresponding `plugins/<scope>.lua` and `configs/<scope>/<plugin-name>.lua`.

3. Remove corresponding keymap if exists.

4. Press `<leader>px` to clean.

### Modify keymap

  - For vanilla nvim's keymap

    modify `lua/core/mapping.lua`

  - For specific plugin's keymap

    modify `lua/keymap/init.lua`

  - Command breakdown

    ```lua 
        ┌─ sep     ┌── map_type
     ["n|gb"] = map_cr("BufferLinePick"):with_noremap():with_silent(),
       │  └── map_key          │              └── special     │
       └──── map_mode          └── map_content                └── special (can be chained)
    ```

### Modify event defined by `autocmd`

- modify `lua/core/event.lua`

### Modify vanilla nvim's options

- modify `lua/core/options.lua`

### Switch color scheme

- modify `lua/core/settings.lua` [this line](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/core/settings.lua#L27)

- `lualine`'s color scheme:

  1. check the scheme whether support `lualine` or not.
  2. modify `configs/ui/lualine.lua`: [this line](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/configs/ui/lualine.lua#L107)

All of modified config will have effect after you restart `nvim`.

## Global assets
### Palette 调色板
This configuration provides a global unified palette. You may use `require("modules.utils").get_palette({ <color_name> = <hex_value> }?)` to get the global color palette. Specific colors may be overwritten in [`settings.lua`](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/core/settings.lua#L18-L23) or passing in as a function parameter. You will be prompted when using this function.

The order of priority for modifying the palette is:
```
preset colors < global colors defined in `settings.lua` < incoming function parameters
```

All available colors can be found [here](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/utils/init.lua#L3-L30). You can also explore implementation details in this file.

### Icons
This configuration also provides a dedicated icon set. It can be accessed via `require("modules.utils.icons").get(category, add_space?)`. You will get parameter completion when typing.

You can find the list of icons [here](https://github.com/ayamir/nvimdots/blob/main/lua/modules/utils/icons.lua).

## Operation manual

+ Find word

[![hop to find word](https://s2.loli.net/2022/01/06/WZKjvaF8qGEYP5R.png)](https://youtu.be/Otz09Gdk4NA)

+ Region operation

[![region operation](https://s2.loli.net/2022/01/06/PzcmOIksQNbeEpA.png)](https://youtu.be/4esdUMHXNTo)

## Guide on how to use the catppuccin colorscheme
### What is Catppuccin? <sup><a href="https://www.reddit.com/r/neovim/comments/r9619t/comment/hna3hz8">[1]</a></sup>
> Catppuccin is a community-driven soothing pastel theme that aims to be the middle ground between low and high-contrast themes, providing a warm color palette with 26 eye-candy colors that are bright enough to be visible during the day, yet pale enough to be easy on your eyes throughout the night.

### Basic Usage
Modify [these lines](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/configs/ui/catppuccin.lua#L2-L89). _(Note: This link might be slightly different from `HEAD`, but it can be used as a reference.)_ See detailed explanation of each option below.

#### General
These settings are unrelated to any group and are globally independent.
-   `flavour`: _(Can be any one of: `latte`, `frappe`, `macchiato`, or `mocha`)_ this is **mandatory**. You **must** set this value in order to make catppuccin work correctly. Note that `latte` is a light colorscheme, and the rest are dark schemes; The `mocha` palette is the only one that has been modified to make catppuccin look like the v0.1 one. Check out [this PR](https://github.com/ayamir/nvimdots/pull/163) for details.
-   `transparent_background`: _(Boolean)_ if true, disables setting the background color.
-   `term_colors`: _(Boolean)_ if true, sets terminal colors (a.k.a., `g:terminal_color_0`).

#### Dim inactive
This setting manages the ability to dim **inactive** splits/windows/buffers.
-   `enabled`: _(Boolean)_ if true, dims the background color of inactive window or buffer or split.
-   `shade`: _(string)_ sets the shade to apply to the inactive split or window or buffer.
-   `percentage`: _(number from 0 to 1)_ percentage of the shade to apply to the inactive window, split or buffer.

#### Styles
Handles the style of general highlight groups _(see `:h highlight-args` for detailed explanation)_:
-   `comments`: _(Table)_ changes the style of comments.
-   `functions`: _(Table)_ changes the style of functions  _(e.g., [`button`](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/configs/ui/alpha.lua#L28) in config)_.
-   `keywords`: _(Table)_ changes the style of keywords _(e.g., `local`)_.
-   `strings`: _(Table)_ changes the style of strings.
-   `variables`: _(Table)_ changes the style of variables.
-   `properties`: _(Table)_ changes the style of a phantom field with only getter and/or setter _(e.g., field access `tbl.field`)_.
-   `operators`: _(Table)_ changes the style of operators.
-   `conditionals`: _(Table)_ changes the style of conditional check keywords _(e.g., `if`)_.
-   `loops`: _(Table)_ changes the style of loop keywords _(e.g., `for`)_.
-   `booleans`: _(Table)_ changes the style of booleans.
-   `numbers`: _(Table)_ changes the style of numbers.
-   `types`: _(Table)_ changes the style of types _(e.g., `int`)_.

#### Integrations
These integrations allow catppuccin to set the theme of various plugins. To enable an integration you need to set it to `true`.

#### Using the auto-compile feature
> Catppuccin is a highly customizable and configurable colorscheme. This does however come at the cost of complexity and execution time.

Catppuccin can pre-compute the results of configuration and store the results in a compiled lua file. These pre-cached values are later used to set highlights. The cached file is stored at `vim.fn.stdpath("cache") .. "/catppuccin"` by default _(use `:lua print(vim.fn.stdpath("cache") .. "/catppuccin")` to see where it locates on your computer)_. You may change this behavior by modifying [this line](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/configs/ui/catppuccin.lua#L17).

> **Note**: As of 7/10/2022, catppuccin should be able to automatically recompile when the setup table changed. You cannot disable this feature.

### Advanced Feature
#### Customizing the palette
Not satisfied with the current appearance? You may modify the palette yourself, like `mocha`!

#### Get catppuccin colors
```lua
local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "frappe"
local mocha = require("catppuccin.palettes").get_palette "mocha"

local colors = require("catppuccin.palettes").get_palette() -- current flavour's palette
```

These lines would all return a table respectively, where the key is the name of the color and the value is its hex value.

#### Overwriting highlight groups
Global highlight groups can be overwritten like so:

```lua
custom_highlights = function(cp)
	return {
		<hl_group> = { <fields> }
	}
end
```

Here is an example:

```lua
require("catppuccin").setup({
	custom_highlights = function(cp)
		return {
			Comment = { fg = cp.flamingo },
			["@constant.builtin"] = { fg = cp.peach, style = {} },
			["@comment"] = { fg = cp.surface2, style = { "italic" } },
		}
	end,
})
```

Per flavour highlight groups can be overwritten starting from [this line](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/configs/ui/catppuccin.lua#L121) like so:

```lua
highlight_overrides = {
	all = function(cp) -- Global highlight, will be replaced with custom_highlights if exists
		return {
			<hl_group> = { <fields> }
		}
	end, -- Same for each flavour
	latte = function(latte) end,
	frappe = function(frappe) end,
	macchiato = function(macchiato) end,
	mocha = function(mocha) end,
}
```

Here is an example:

```lua
local ucolors = require("catppuccin.utils.colors")
require("catppuccin").setup({
	highlight_overrides = {
		all = function(colors)
			return {
				NvimTreeNormal = { fg = colors.none },
				CmpBorder = { fg = "#3E4145" },
			}
		end,
		latte = function(latte)
			return {
				Normal = { fg = ucolors.darken(latte.base, 0.7, latte.mantle) },
			}
		end,
		frappe = function(frappe)
			return {
				["@comment"] = { fg = frappe.surface2, style = { "italic" } },
			}
		end,
		macchiato = function(macchiato)
			return {
				LineNr = { fg = macchiato.overlay1 },
			}
		end,
		mocha = function(mocha)
			return {
				Comment = { fg = mocha.flamingo },
			}
		end,
	},
})
```

Additionally, if you want to load other custom highlights later, you may use this function:

```lua
require("catppuccin.lib.highlighter").syntax()
```

For example:

```lua
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from palette
require("catppuccin.lib.highlighter").syntax({
	Comment = { fg = colors.surface0 }
})
```

> **Note**: Custom highlights loaded using the `require("catppuccin.lib.highlighter").syntax()` function **won't** be pre-compiled.
> 
> Unlike the `:highlight` command which can update a highlight group, this function completely replaces the definition. (`:h nvim_set_hl`)

#### Overwriting colors
Colors can be overwritten using `color_overrides` starting from [this line](https://github.com/ayamir/nvimdots/blob/6d814aad5455aa8d248ed6af7b56fc4e99e40f48/lua/modules/configs/ui/catppuccin.lua#L90), like so:

```lua
require("catppuccin").setup {
	color_overrides = {
		all = {
			text = "#FFFFFF",
		},
		latte = {
			base = "#FF0000",
			mantle = "#242424",
			crust = "#474747",
		},
		frappe = {},
		macchiato = {},
		mocha = {},
	}
}
``` 

#### Customizing auto-compile Hook
##### Available Compile Commands

```vim
:CatppuccinCompile " Create/update the compile file
```

Catppuccin also provides the following function to work with the catppuccin compiler:

```lua
require('catppuccin').compile() -- Create/update the compile files
```

##### Post-install/update hooks
- You may add `:CatppuccinCompile` to post-install/update hooks [here](https://github.com/ayamir/nvimdots/blob/bf80e8eb74d8132642fd36dd7e30a4ebec492226/lua/modules/plugins/ui.lua#L13-L17), like so:
```lua
ui["catppuccin/nvim"] = {
	lazy = false,
	name = "catppuccin",
	config = require("ui.catppuccin"),
	build = ":CatppuccinCompile"
}
```

#### Want to know more details?
- Visit catppuccin on [github](https://github.com/catppuccin/nvim)!