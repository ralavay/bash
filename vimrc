set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8

:set number
set tabstop=2
set shiftwidth=2
set expandtab

set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...

set showcmd                     " display incomplete commands

if has("statusline") && !&cp
  set laststatus=2              " always show the status bar
  set statusline=%f\ %m\ %r     " filename, modified, readonly
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v[0x%B]    " current column [hex char]
endif

