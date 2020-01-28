# The ultimate vim configuration

## How to get started
1. `git clone https://github.com/berialcheng/vim.git`
2. `./setup.sh`

## Shortcuts 
* `F2` -- show current date time
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

### Lookupfile
* Ctrl-P -- open File lookup

## References
* [NERD_tree](https://github.com/preservim/nerdtree)
* mini buffer explorer
* lookup file
* [vim-airline](https://github.com/vim-airline/vim-airline) 
* [indentLine](https://github.com/Yggdroot/indentLine)

## TODO
- [ ] fix the NERDTree m break.
- [ ] fix the `git commit` focus.
- [ ] add more language support
- [x] add vim-airline for statusline
- [ ] add indentLine
