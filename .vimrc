syntax on

"Remap : to ; to save on pinky pain
nore ; :
nore , ;

"Keep at least five lines above/below
set scrolloff=5

"Keep at least 5 lines left/right
set sidescrolloff=5

"syntax highlighting
syntax enable

filetype plugin on
filetype indent on

"Shows what you are typing as a command
set showcmd

"enable mouse in console
set mouse=a

"Colors and fonts:
colorscheme desert
set background=dark
set encoding=utf8
set ffs=unix,dos,mac

" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" Make vertical movement 'j/k' move 7 spaces
set so=7

" Always show current position
set ruler

" Turn on the wild menu
set wildmenu

" Ignore case when searching
set ignorecase

" When searching be smart about cases
set smartcase

" Make search act like search in modern browsers
set incsearch

" Highlight search results
set hlsearch

" For regular expressions, turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink matching brackets
set mat=2

" No sound on errors:
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Text, tabs, and indents:

" Use spaces instead of tabs
set expandtab

" Be smart with tabs
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
" set lbr
" set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Status line:

" Always show the status line
set laststatus=2
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]
set statusline=%2*%n\|%<%*%-.40F%2*\|\ %2*%M\ %3*%=%1*\ %1*%2.6l%2*x%1*%1.9(%c%V%)%2*[%1*%P%2*]%1*%2Bi\ %{strftime('%c')}


au BufEnter *.hs compiler ghc

let g:haddock_browser = "/Applications/Firefox.app/Contents/MacOS/firefox"
let g:ghc = "/usr/bin/ghc"
let g:haddock_docdir = "/usr/share/doc/ghc/html/"

" Functions:

" Returns true if paste mode is enabled
 function! HasPaste()
     if &paste
             return 'PASTE MODE  '
                 en
                     return ''
                     endfunction
