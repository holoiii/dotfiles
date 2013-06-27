"Search highlighting
set hlsearch

" CTRL-P max files, 0 = infinite
let g:ctrlp_max_files = 0

" Set syntax
syntax on

" Set leader
let mapleader = ","

" Nerdtree toggling
map <Leader>n :NERDTreeToggle<CR>

" upon hitting escape to change modes,
" send successive move-left and move-right
" commands to immediately redraw the cursor
inoremap <special> <Esc> <Esc>hl

" don't blink the cursor
set guicursor+=i:blinkwait0

" Insert mode uses pipe!
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Open nerdtree to current file
nmap <Bar> :NERDTreeFind<CR>

" Line numbers
set nu

" Use Vim settings, rather then Vi settings (much better!).

set nocompatible

" Turn on the verboseness to see everything vim is doing.
"set verbose=9

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


" I like 4 spaces for indenting
set shiftwidth=2

" I like 4 stops
set tabstop=4

" Spaces instead of tabs

set expandtab

" Always  set auto indenting on
set autoindent

" select when using the mouse
set selectmode=mouse

" set the commandheight
set cmdheight=2

" do not keep a backup files 
set nobackup
set nowritebackup

" show the cursor position all the time
set ruler

" show (partial) commands
set showcmd

" Set status line
set statusline=[%02n]\ %f\ %(\[%M%R%H]%)%=\ %4l,%02c%2V\ %P%*

" Always display a status line at the bottom of the window
set laststatus=2

" showmatch: Show the matching bracket for the last ')'?
set showmatch

" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv

" widen/shrink split buffer
if bufwinnr(1)
  map + <c-W>>
  map - <c-W><
endif

colorscheme molokai

" Add ctrl-p plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
