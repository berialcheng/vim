" Setting 'compatible' changes numerous options to make Vim more Vi-compatible
" so any other options should be set AFTER setting 'compatible'.
set nocompatible

syntax on
filetype on
filetype plugin indent on 

" set t_Co=256
colorscheme desert

set ruler " Ruler, used to display the row and column number of the position of the cursor, comma separated. Each window has its own scale. If the window has the state line, where the display scale. Otherwise, it is displayed in the last line.
set showcmd " To show the commands
set bg=dark
set number
set hlsearch
set incsearch
set cursorline
set tabstop=4 " Setting tab (TAB) width
set autoread
set mouse=a

" Auto complete
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

set completeopt=longest,menu

" Shortcut mapping 
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F3> :echo 'abc'<CR>
map <C-;> :echo 'abc'<CR>


" Settings against MiniBuffer plugin

 
" Settings against the NERDTree plugin
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
nmap <silent> nerd :NERDTreeToggle<cr>
" autocmd vimenter * if !argc() | NERDTree | endif " open NERDTree if there are no file open 
let NERDTreeIgnore = ['\.git', '\.pyc$', '\.DS_Store', '\.swp', '\.swo', '\.swn', '\.idea', '\.iml']

" Settings against the WinManager plugin
let g:winManagerWidth = 30
let g:AutoOpenWinManager = 1

" registers NERDTree with winmanager
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()  
    exec 'q'
    exec 'NERDTreeToggle' 
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction  

" let g:winManagerWindowLayout = "FileExplorer,TagsExplorer|BufExplorer"
let g:winManagerWindowLayout = "NERDTree,TagsExplorer|BufExplorer"  

nmap <silent> wm :WMToggle<cr>

" Settings against Netrw plugin
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_winsize=30
let g:netrw_browse_split=2

" Replaced by ctrlp
" Settings against Lookup File Plugin
" nmap <silent> <C-P> :LUWalk<cr>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_height = 20
let g:ctrlp_clear_cache_on_exit = 1 
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files = 0
let g:ctrlp_lazy_update = 1 " update after 250 milliseconds

" miniBufExplorer
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplUseSingleClick = 1

" Indent 
" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Others
" mapping the Ctrl+S(Q) to Save(Quit) Action
" add 'stty -ixon' into .bashrc file in order to make this happen if necessary 
nmap <silent> <C-Q> :q<cr>
nmap <C-S> :w<cr>

