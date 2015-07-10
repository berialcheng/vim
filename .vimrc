set nocompatible

set ruler
set showcmd
set bg=dark
set number
syntax on
set hlsearch
set incsearch
set cursorline
set tabstop=4

" Shortcut mapping 
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F3> :echo 'abc'<CR>
map <C-;> :echo 'abc'<CR>


" Settings against MiniBuffer plugin

 
" Settings against the NERDTree plugin
let NERDTreeShowHidden=1
let NERDTreeWinSize=30
nmap <silent> nerd :NERDTreeToggle<cr>

" Settings against the WinManager plugin
let g:winManagerWidth = 30
let g:AutoOpenWinManager = 1

let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout = 'FileExplorer,BufExplorer'
"let g:winManagerWindowLayout="NERDTree"  
function! NERDTree_Start()  
    exec 'NERDTreeToggle'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction  

nmap <silent> wm :WMToggle<cr>

" Settings against Netrw plugin
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_winsize=30
let g:netrw_browse_split=2

" Settings against Lookup File Plugin
nmap <silent> <C-P> :LookupFile<cr>

" Others
" mapping the Ctrl+S(Q) to Save(Quit) Action
" add 'stty -ixon' into .bashrc file in order to make this happen if necessary 
nmap <silent> <C-Q> :q<cr>
nmap <C-S> :w<cr>

