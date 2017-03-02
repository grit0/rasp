set number
syntax on 
set title
set showcmd
set incsearch hlsearch
colorscheme monokai
let g:airline#extensions#tabline#enabled = 1
let mapleader=" "
map <leader>n :NERDTreeToggle
map <leader>p :PluginInstall

set laststatus=2
set ttimeoutlen=50
"let g:airline#extensions#tabline#left_sep = ' ' 
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_theme = 'powerlineish'

Arpeggio inoremap f function
Arpeggio inoremap jk  <Esc>
Arpeggio inoremap () ()<Left> 
call arpeggio#map('i', '', 0, 'fun', 'fuction')
set nocompatible              " be iMproved, required

let g:EasyMotion_do_mapping = 0 
let g:EasyMotion_smartcase = 1 
let g:EasyMotion_startofline = 0 
map <leader>f <Plug>(easymotion-bd-f) 
map <leader>g <Plug>(easymotion-s)
map <leader>h <Plug>(easymotion-s2)
nmap <Leader>f <Plug>(easymotion-overwin-f) 


filetype off                  " required

"set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
"call vundle#begin('$HOME/vimfiles/bundle/')

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

Plugin 'dtinth/vim-colors-dtinth256'

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugid 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'sickill/vim-monokai'
Plugin 'kien/ctrlp.vim/'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-vinegar'
Plugin 'kana/vim-arpeggio'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
Plugin 'zhaocai/GoldenView.Vim'
call vundle#end()            " required
filetype plugin indent on    " required
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


