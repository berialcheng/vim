# The ultimate vim configuration

![CI](https://github.com/berialcheng/vim/workflows/CI/badge.svg?branch=master)
[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)]()

[![GitHub stars](https://img.shields.io/github/stars/berialcheng/vim.svg?style=social&label=Stars&style=plastic)]()
[![GitHub watchers](https://img.shields.io/github/watchers/berialcheng/vim.svg?style=social&label=Watch&style=plastic)]()
[![GitHub forks](https://img.shields.io/github/forks/berialcheng/vim.svg?style=social&label=Fork&style=plastic)]()

## Preview
![Preview](https://github.com/berialcheng/vim/raw/master/screenshots/preview.png)

![Search file](https://github.com/berialcheng/vim/raw/master/screenshots/search_file.png)

## Installation
1. `git clone https://github.com/berialcheng/vim.git`
2. `./setup.sh`

## Intro
### Vanilla Vim Capabilities
* `<F2>` -- save the current file
* `<F4>` -- quit vim
* `h` to go left, `j` to go down, `k` to go up, `l` to go right
* hit `CTRL-]`, Jump to a subject. Type `CTRL-T` or `CTRL-O`.  Repeat to go further back
* `CTRL-f`/`CTRL-b` - forward/backward one ppage

### WinManager
* `:map <c-w><c-f> :FirstExplorerWindow<cr>`

### NERDTree
* nerd -- open the left file system tree explorer
* `o`: open in prev window | open & close node
* `O`: recursively open node
* `P`: go to root
* `p`: go to parent
* `K`/`J`: go to first/last child
* `I`: Toggle hidden files
* `t`/`i`/`s`: Open the selected file new tab/horizontal split window/vertical split window
* `m`: Show the NERD Tree menu
* `R`: Refresh the tree, useful if files change outside of Vim

### ctrlp
* `Ctrl-P` -- open File lookup
* Press `c-f` and `c-b` to cycle between modes.


### Ferret - multi-file search
* `:Ack {pattern} {options}`
* `:Ack! {pattern} {options}` -- Like `:Ack`, but returns all results irrespective of the value of `g:FerretMaxResults`.

## References
* [NERD_tree](https://github.com/preservim/nerdtree)
* mini buffer explorer
* lookup file
* [vim-airline](https://github.com/vim-airline/vim-airline) 
* [indentLine](https://github.com/Yggdroot/indentLine)
* [ferret](https://github.com/wincent/ferret)
* [Vim Search, Find and Replace: Commands and Plugins](https://thevaluable.dev/vim-search-find-replace/)
* [ctrlp](https://github.com/kien/ctrlp.vim)
* [Vim Awesome](https://vimawesome.com/)
* [Vim fugitive](https://github.com/tpope/vim-fugitive)

## TODO
- [ ] fix the NERDTree m break
- [ ] fix the `git commit` focus
- [ ] fix mini buf expl hanging issue
- [x] add more language support
- [x] add vim-airline for statusline
- [x] add indentLine
- [x] filter out files in NERDTree
- [x] add screenshot
- [x] tuning the mini buf expl config
- [x] add search support
- [x] add git support
- [ ] add github release
