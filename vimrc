" Copy this file to ~/.vimrc

set nocompatible     " Vim behavior, not Vi.
set encoding=utf-8   " Use UTF-8 encoding
set nobackup         " Don't backup
set nowritebackup    " Write file in place
set noswapfile       " Don't use swap files (.swp)
set autoread         " Autoreload buffers
set autoindent       " Auto indent
syntax enable        " Enable syntax highlight

" syntax on            " Enable syntax highlighting
set encoding=utf-8

filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype specific indenting
filetype plugin on            " Enable filetype specific plugins



"" Show line number
:set number
" Quick switch between numbers ruler
noremap <silent> <F9> :set number!<CR>

"" Tabbing global config
set tabstop=2
set shiftwidth=2
set expandtab
" Specify tab for each extension
autocmd FileType markdown setlocal shiftwidth=4 tabstop=4

"" Search
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
" Remove highlight after search
nmap <silent> <C-N> :silent noh<CR>

set showcmd                     " display incomplete commands

if has("statusline") && !&cp
  set laststatus=2              " always show the status bar
  set statusline=%f\ %m\ %r     " filename, modified, readonly
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v[0x%B]    " current column [hex char]
endif

""" Bundle config

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""" Add git plugin address here to install
" Install Vundle
Bundle 'gmarik/vundle'
" Directory navigator
Bundle 'scrooloose/nerdtree'
" Ruby syntax
Bundle 'vim-ruby/vim-ruby'
" Rails support
Bundle 'tpope/vim-rails'
" Open file from Ctrl P
Bundle 'kien/ctrlp.vim'
" Markdown syntax support
Bundle 'plasticboy/vim-markdown'
"rspec runner
Bundle 'thoughtbot/vim-rspec' 
" SnipMate auto end completion
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'
"Bundle 'scrooloose/snipmate-snippets'
" Bundle 'honza/vim-snippets' 
" this similar to vim-snipmate but snipmate does
" not contain template by default so maybe we have to take it from snippets
" YouCompleteMe
"Bundle 'Valloric/YouCompleteMe'
" Solarize
"Bundle 'altercation/vim-colors-solarized'

""" End Bundle config

""" NERDTree config
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""" END NERDTree config

""" Extension
" Treat .md as markdown format
au BufRead,BufNewFile *.md set filetype=markdown

""" Vim-ruby
imap <S-CR>    <CR><CR>end<Esc>-cc

""" CtrlP
let g:ctrlp_cmd = 'CtrlP .' "only load file in current dir

""" Switch split panels
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

""" resize split panels
" resize vertical split window
nmap <C-S-J> <C-W>-<C-W>-
nmap <C-S-K> <C-W>+<C-W>+
" resize horizontal split window
nmap <C-S-H> <C-W>><C-W>>
nmap <C-S-L> <C-W><<C-W><

""" Ruby, rails
"autocmd FileType ruby,eruby,rb let g:rubycomplete_buffer_loading = 1 
"autocmd FileType ruby,eruby,rb let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby,rb let g:rubycomplete_rails = 1
" enable def-end if-end autocomplte

if !exists( "*RubyEndToken" )

  function RubyEndToken()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*|\(,\|\s\|\w*|\s*\)\?$'
    let stuff_without_do = '^\s*class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\|do'
    let with_do = 'do\s*|\(,\|\s\|\w*|\s*\)\?$'

    if match(current_line, braces_at_end) >= 0
      return "\<CR>}\<C-O>O"
    elseif match(current_line, stuff_without_do) >= 0
      return "\<CR>end\<C-O>O"
    elseif match(current_line, with_do) >= 0
      return "\<CR>end\<C-O>O"
    else
      return "\<CR>"
    endif
  endfunction

endif

imap <buffer> <CR> <C-R>=RubyEndToken()<CR>

""" Mouse
"set mouse=a "set this then we can not right click - copy in terminal

" Vim-snippets

" let g:snipMate = {}
" let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'

""" Solarized color theme
"let g:solarized_termcolors=256
"set t_Co=256
"set term=xterm-256color
"set background=dark
"colorscheme solarized


" Color theme http://vim.wikia.com/wiki/256_colors_in_vim
"set term=xterm-256color

