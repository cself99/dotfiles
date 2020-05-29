call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set cursorline
set foldmethod=indent
set nrformats+=alpha
set splitright
set splitbelow
set mouse=a
set expandtab
set undofile
set noshowmode
set nofoldenable

set clipboard=unnamedplus

colorscheme onedark

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
