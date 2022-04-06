" Basic visual settings
syntax enable
set number				" displays line number
set relativenumber		" displays relative line number
set cursorline			" highlige current line

" search
set hlsearch            " Highlight search results
set ignorecase          " ignore search case
set smartcase           " do not ignore case if search has uppercase


" Tabs & Spaces
set tabstop=4			" number of visual spaces per TAB
set softtabstop=4		" number of spaces in tab when editing
set shiftwidth=4		" number of spaces to use for autoindent
set expandtab			" tabs are space
set autoindent
set copyindent          " copy indent from previous line

" Various functionality things
set showcmd
set noerrorbells        " stop fucking beeping me!
set noswapfile          " do not leave backup files
set clipboard=unnamed,unnamedplus   " Use the OS clipboard
set hidden              " unsafed bufferd are changed to hidden instead of closed when opening new file

" Vimplug-stuff
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimwiki/vimwiki'
" let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
call plug#end()

" Use Ctrl-k Ctrl-k to open nerdtree
map <C-k><C-k> :NERDTreeToggle<cr>
" Use Ctrl-P to open the fuzzy file opener
nnoremap <C-p> :Files<cr>
