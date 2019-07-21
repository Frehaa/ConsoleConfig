set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'Valloric/YouCompleteMe'

Plugin 'https://github.com/tpope/vim-commentary'

Plugin 'https://github.com/eagletmt/neco-ghc'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set tabstop=4
set shiftwidth=4
set tw=80
set expandtab
set relativenumber
set number
