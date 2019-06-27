"# My Plugins 
call plug#begin('~/.vim/plugged') 
Plug 'scrooloose/nerdtree'  , 
Plug 'francoiscabrol/ranger.vim', 
Plug 'tpope/vim-fugitive' ,

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Kotlin synyax etc
Plug 'udalov/kotlin-vim'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Vim latex suite, contains useful folding plugin
Plug 'gerw/vim-latex-suite'

"Plug 'valloric/youcompleteme'
call plug#end()



"Ultrasnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"# General Settings
set mouse=a                            " Allows mouse clicks
set clipboard=unnamedplus
syntax on
filetype plugin on
set nocompatible                       " Unset compatibility with VI, it's 2011!
set wildmenu
set wildmode=list:longest              " make cmdline tab completion similar to bash

set showmatch                          " Show matching brackets
set ignorecase                         " Do case insensitive matching
set ruler
set number
set autochdir

set tabstop=2                          " Set tabstop
set shiftwidth=2                       " Set shiftwidth
set expandtab			       " Converts tabs to spaces	

set winaltkeys=no                      " Enable Alt- keychain

set splitright                         " Opens new windows on the RHS

map <F10> :NERDTreeToggle<CR>          " Key to open NERDTree in commands mode
map <F9> :Gblame<CR>                   " Open git blame
map <F8> :Ranger<CR>                   " Open ranger
map <F7> :vsplit <bar> :Ranger<CR>          " Open ranger

imap jj <Esc>


augroup LaTeX_settings
    autocmd!
    autocmd FileType tex set indentexpr=""
augroup end

" Vim session management
let g:session_dir = '~/.vim-sessions'
exec 'nnoremap <Leader>ss :mks! ' . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
exec 'nnoremap <Leader>sr :so ' . g:session_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'




