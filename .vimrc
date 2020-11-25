
" This enables automatic indentation as you type.
filetype indent on

set mouse=a " allows the mouse to move the cursor
set linebreak " prevents vim from cutting words when wrapping long lines
set clipboard=unnamedplus " allows vim to share os clipboard
syntax on
set number
set tabstop=2                          " Set tabstop
set shiftwidth=2                       " Set shiftwidth


" Go to the end of a line while in insert mode
map <C-a> <ESC>$
imap <C-a> <ESC>A

" Using 'gj' and 'gk' instead of just 'j' and 'k' allows moving down and up by screen lines instead of file lines.
noremap j gj
noremap k gk

map <F10> :NERDTreeToggle<CR>          " Key to open NERDTree in commands mode

"# My Plugins 
call plug#begin('~/.vim/plugged') 
Plug 'scrooloose/nerdtree'  , 

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Vim autocomplete
" Plug 'valloric/youcompleteme'

" latex-suite
Plug 'vim-latex/vim-latex'

" Kotlin synyax etc
Plug 'udalov/kotlin-vim'

" Ruby synyax etc
Plug 'vim-ruby/vim-ruby'

" Haml synyax etc
Plug 'tpope/vim-haml'
call plug#end()





""Ultrasnips settings
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"filetype plugin on
"set nocompatible                       " Unset compatibility with VI, it's 2011!
"set wildmenu
"set wildmode=list:longest              " make cmdline tab completion similar to bash
"
"set showmatch                          " Show matching brackets
"set ignorecase                         " Do case insensitive matching
"set ruler
"set number
"set autochdir
"
"set expandtab			       " Converts tabs to spaces	
"
"set winaltkeys=no                      " Enable Alt- keychain
"
"set splitright                         " Opens new windows on the RHS
"
"map <F9> :Gblame<CR>                   " Open git blame
"map <F8> :Ranger<CR>                   " Open ranger
"map <F7> :vsplit <bar> :Ranger<CR>          " Open ranger
"
"imap jj <Esc>
"
"
"augroup LaTeX_settings
"    autocmd!
"    autocmd FileType tex set indentexpr=""
"augroup end
"
"" Vim session management
"let g:session_dir = '~/.vim-sessions'
"exec 'nnoremap <Leader>ss :mks! ' . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
"exec 'nnoremap <Leader>sr :so ' . g:session_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'
