# Neovim Config
These files are the ones corresponding to my Neovim config.  

The plugin manager used is [Lazy](https://github.com/folke/lazy.nvim).  

This config is highly inspired in [Josean Martinez repository](https://github.com/josean-dev/dev-environment-files), however, there are some differences.  


## Requirements

This setup works under some configuration. Without this configuration there might be things that don't work as expected.
* True color terminal (iTerm2 in my particular case).
* Neovim >= 0.9 (this might change in the future)
* [NerdFont](https://www.nerdfonts.com/).
* [Ripgrep](https://github.com/BurntSushi/ripgrep) for Telescope Fuzzy Finder to work.
* XCode Command Lines Tool (macOS).

## Useful keymaps

The below tables contain some useful keymaps.  

Feel free to explore the repo in order to discover all the keymaps (the vast majority are documented).  

Leader is defined as the spacebar.  


#### General keymaps
| Command   | Description |
|-----------|-------------
| jk      | exit insert mode |
| gc      | comment the current selection |
| leader+d | copies to the void register  |
| leader+y | copies to the system clipboard |
| leader+p | pastes without flushing the buffer |

#### Editor keymaps
| Command | Description |
|---------|------------
leader+sv | split window vertically
leader+sh | split window horizontally
leader+se | make splits equal size
leader+sx | closes current split
Ctrl+h    | goes to the split at the left of the current one
Ctrl+l    | goes to the split at the right of the current one
leader+to | opens new tab
leader+tx | closes current tab
leader+tn | moves to the next tab
leader+tp | moves to the previous tab
leader+tf | open current buffer in the new tab
leader+ee | toggles file explorer
leader+ef | toggles file explorer in current file
leader+ec | collapse file explorer
leader+er | refresh file explorer
leader+sm | Maximize/minimize split

#### Find keymaps
| Command | Descripion |
|---------|------------|
leader+ff | find files in cwd
leader+fr | find files in recent files
leader+fs | find a string in cwd
leader+fc | find files under the cursor in cwd

#### Keymaps to navigate the suggestions
| Command | Descripion |
|---------|------------|
| Ctrl-p     | goes to the previous suggestion
| Ctrl-n     | goes to the next suggestion
| Ctrl-e     | close completion window 
