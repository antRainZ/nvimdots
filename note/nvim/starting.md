# 简介
[文档地址](https://neovim.io/doc/user/starting.html)

Nvim :help pages, generated from source using the **tree-sitter-vimdoc** parser.

```sh
nvim [option | filename] ..
```

# Initialization
1. Set the 'shell' option
2. Process the arguments
3. Start a server (unless --listen was given) and set v:servername.
4. Wait for UI to connect.
5. Setup default-mappings and default-autocmds.  Create popup-menu.
6. Enable filetype and indent plugins.
7. Load user config (execute Ex commands from files, environment, …). `~/.config/nvim/init.vim(or init.lua)`
8. Enable filetype detection.
9. Enable syntax highlighting.
10. Load the plugin scripts. all directories in 'runtimepath' will be searched. First `*.vim` are sourced, then `*.lua` files.
11. Set 'shellpipe' and 'shellredir'
12. Set 'updatecount' to zero, if "-n" command argument used
13. Set binary options if the -b flag was given.
14. Read the shada-file.
15. Read the quickfix file if the -q flag was given, or exit on failure.
16. Open all windows
17. Execute startup commands

# $VIM and $VIMRUNTIME

Nvim will try to get the value for $VIM in this order:
1. Environment variable $VIM, if it is set.
2. Path derived from the 'helpfile' option, unless it contains some environment variable too (default is "$VIMRUNTIME/doc/help.txt").  File
   name ("help.txt", etc.) is removed.  Trailing directory names are removed,in this order: "doc", "runtime".
3. Path derived from the location of the nvim executable.
4. Compile-time defined installation directory (see output of ":version").

```sh
:echo $VIM
# /usr/share/nvim
:echo $VIMRUNTIME
# /usr/share/nvim/runtime
```

# Standard Paths

```sh
CONFIG DIRECTORY (DEFAULT)
                  $XDG_CONFIG_HOME            Nvim: stdpath("config")
    Unix:         ~/.config                   ~/.config/nvim
    Windows:      ~/AppData/Local             ~/AppData/Local/nvim
DATA DIRECTORY (DEFAULT)
                  $XDG_DATA_HOME              Nvim: stdpath("data")
    Unix:         ~/.local/share              ~/.local/share/nvim
    Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data
RUN DIRECTORY (DEFAULT)
                  $XDG_RUNTIME_DIR            Nvim: stdpath("run")
    Unix:         /tmp/nvim.user/xxx          /tmp/nvim.user/xxx
    Windows:      $TMP/nvim.user/xxx          $TMP/nvim.user/xxx
STATE DIRECTORY (DEFAULT)
                  $XDG_STATE_HOME             Nvim: stdpath("state")
    Unix:         ~/.local/state              ~/.local/state/nvim
    Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data
```

# help

模式切换
```sh
WHAT			PREPEND    EXAMPLE
Normal mode command		   :help x
Visual mode command	  v_	   :help v_u
Insert mode command	  i_	   :help i_<Esc>
Command-line command	  :	   :help :quit
Command-line editing	  c_	   :help c_<Del>
Vim command argument	  -		   :help -r
Option			  '	   :help 'textwidth'
Regular expression	  /	   :help /[
```