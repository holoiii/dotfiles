" Initiate Pathogen
execute pathogen#infect()

filetype plugin indent on

" Use VIM settings, rather than VI settings
set nocompatible

" Search highlighting
set hlsearch

" Enable syntax highlighting
syntax on

" Insert mode uses pipe!
let &t_SI = "\<Esc>[6 q"
let &t_EI = "\<Esc>[0 q"
let &t_SR = "\<Esc>[4 q"

" Upon hitting escape to change modes,
" send successive move-left and move-right
" commands to immediately redraw the cursor
inoremap <special> <Esc> <Esc>hl

" Line numbers
set nu

" Set leader
let mapleader = ","

" Open nerdtree to current file
nmap <Bar> :NERDTreeFind<CR>

" Open current buffer in new tab
nnoremap <silent> <Leader>t :tab split<CR>

" Clear all marks
nnoremap <silent> <Leader>M :MarkClear<CR>

" Set available mark palette
let g:mwDefaultHighlightingPalette='maximum'

" Widen/shrink split buffer with + and -
if bufwinnr(1)
  map + <c-W>>
  map - <c-W><
endif

" 4 spaces for indenting
set shiftwidth=2

" 4 stops
set tabstop=4

" Spaces instead of tabs
set expandtab

" Show the matching bracket for the last ')'?
set showmatch

" Do not keep a backup files 
set nobackup
set nowritebackup

" Show the cursor position all the time
set ruler

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Always display a status line at the bottom of the window
set laststatus=2

" Give some more height when showing commands
set cmdheight=2

" Show (partial) commands
set showcmd

" Use j/k to escape
:imap jk <Esc>

" Gruvbox colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set background=dark

" Gruvbox search highlighting cursor color inversion
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" Use powerline fonts for airline
let g:airline_powerline_fonts = 1

" Airline theme
let g:airline_theme='wombat'
