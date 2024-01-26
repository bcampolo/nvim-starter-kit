# Neovim Starter Kit 🕹⚡🤖 #

This is my personalized Neovim Starter Kit.  IMO it is a very well structured, clean configuration for getting started with Neovim.  It uses the [lazy.nvim](https://github.com/folke/lazy.nvim) package manager, which allows plugins to be added simply by dropping a plugin spec file into your plugins folder.  Each plugin file in my configuration is well commented and you can remove any plugin file that you don't need or want.  A lot of Neovim users recommend kickstart.nvim, which I agree is a great resource due to its simplicity, but I believe this Starter Kit directory structure is much easier to maintain in the long run.

> **DISCLAIMER:** 
> These configurations are based on my personal dev setup and may not be right for everyone.
> I take no responsibility for the endless hours of Neovim configuration you are about to embark on and the unhealthy bond that you will form with your editor.
> Proceed at your own risk!

********************************************************************************

## YouTube Guide ##
[YouTube Guide](https://www.youtube.com/watch?v=33NLeHvFKxU) for this Starter Kit

********************************************************************************

## Prerequisites ##
- [True Color Terminal](https://gist.github.com/kurahaupo/6ce0eaefe5e730841f03cb82b061daa2#now-supporting-true-color) - Make Neovim look pretty
- [Neovim](https://neovim.io/) - Version 0.9.1 or later
- [Nerd Font](https://www.nerdfonts.com/) - Needed to see nice icons in Neovim
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Needed for Telescope Fuzzy Finder
- [xclip](https://linuxconfig.org/how-to-use-xclip-on-linux) - Needed for system clipboard support
- [npm/node](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) - Needed for some LSP servers (see commented lines in [nvim-lspconfig.lua](.config/nvim/lua/plugins/nvim-lspconfig.lua))

## Optional ##
- **TMUX**
    - TMUX is a way to organize multiple terminal sessions, windows and panels and works very nicely in conjunction with Neovim.
    - I've included my TMUX configuration file in this repo as well [.tmux.conf](.tmux.conf)
- **SHELL SETTINGS**
    - This will set your terminal to use vim motions.  You can put it in your ~/.bashrc or similar file:
        `set -o vi`

********************************************************************************

> **NOTE:** 
> I do all of my development on a Debian/Ubuntu based Linux distro, so while most of this README will still work on other operating systems, it is geared towards my own dev environment.
> If you are using a Mac, your mileage may vary (you Kool-Aid-drinking, hipster Apple fanboi).
> If you are using Windows, I'll see you in Hell!

********************************************************************************

## Setting up Neovim using this Starter Kit ##

After installing all of the prerequisites, you can start Neovim by running `nvim` to make sure it works.  This will be the ugly vanilla configuration before adding any themes/plugins.  If you are new to vim/nvim and got yourself trapped, you can quit with `:q`

### Instructions
- If you are **NOT** starting from scratch and want to replace your current Neovim configuration, make a backup first:

    ```sh
    # Backup your existing Neovim configuration
    mv ~/.config/nvim{,.bak}

    # Backup your existing Neovim cache/state (optional but recommended)
    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}
    mv ~/.cache/nvim{,.bak}
    ```

- Clone the Starter Kit (if you didn't make a backup, this will replace your existing Neovim config)

    ```sh
    # Make git subdirectory in your home directory
    mkdir ~/git
    cd ~/git
    # Clone Starter Kit into your git directory
    git clone https://github.com/bcampolo/nvim-starter-kit
    # Make the Neovim configuration directory
    mkdir -p ~/.config/nvim
    # Copy the Starter Kit Neovim configuration to your Neovim configuration
    cp -r ~/git/nvim-starter-kit/.config/nvim/* ~/.config/nvim/
    ```

- Start Neovim 🚀

    ```sh
    nvim
    ```

- Once Neovim is started, you may see a number of messages from Lazy, Mason and Treesitter installing plugins, LSP servers, and syntax highlighting.  You may see some initial errors.  There may be plugins that are still installing.  Press enter if instructed to.  Wait a bit for everything to finish installing.  Press q to close the Lazy UI.  Once everything is done installing, quit and restart Neovim one more time.

- Now everything should be setup, but it is possible that some plugins are not working correctly.  Run `:checkhealth` from within Neovim and investigate any errors that you encounter.

## Starter Kit Structure ##
```sh
├── .config
│   └── nvim
│       ├── ftplugin                                
│       │   ├── markdown.lua                    # Add files here in the form filetype.lua
│       │   └── ...                             # to change options based on file type (not extension)
│       ├── lua
│       │   ├── core
│       │   │   ├── keymaps.lua                 # This configures all of your key bindings
│       │   │   └── options.lua                 # This configures all of your global Neovim options
│       │   └── plugins
│       │       ├── autopairs.lua               # Plugins can be added / removed from Neovim by
│       │       ├── ...                         # adding / removing plugin files to this directory
│       │       └── vim-tmux-navigator.lua
│       ├── init.lua                            # This is the main Neovim configuration file
│       └── lazy-lock.json                      # This locks your plugins to specific versions/commits
├── .mime.types                                 # Fixes a Linux/Firefox issue to view local markdown (optional)
└── .tmux.conf                                  # This is my tmux configuration (optional)
```
********************************************************************************

## Additional Resources ##
- [My Neovim YouTube Playlist](https://youtube.com/playlist?list=PLD3V7KEd2M-tUghtES9iyl_ERa7sc1-HF&si=sLuFUeU_IjGr0S2I) 🔥🔥🔥

## Suggestions / Pull Requests ##
If you run into any issues or have any suggestions for plugins that you feel should be part of the Starter Kit, open a PR that includes the updates and I'll review/merge it as soon as I can.

## Starter Kit Variants ##
- [Neovim Starter Kit](https://github.com/bcampolo/nvim-starter-kit)
- [Neovim Starter Kit for Python](https://github.com/bcampolo/nvim-starter-kit/blob/python/README.md#neovim-starter-kit-for-python-)
- [Neovim Starter Kit with Games](https://github.com/bcampolo/nvim-starter-kit/blob/games/README.md#neovim-starter-kit-with-games-)

