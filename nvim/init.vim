if &compatible
	set nocompatible
endif

set encoding=UTF-8
" Plugins
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    
    " Vim Enhancements
    call dein#add('justinmk/vim-sneak')
    
    " Aesthetics
    call dein#add('arcticicestudio/nord-vim')
    call dein#add('itchyny/lightline.vim')

    " Syntactic Language Supprot
    call dein#add('cespare/vim-toml')
    call dein#add('stephpy/vim-yaml')
    call dein#add('rust-lang/rust.vim')
    call dein#add('plasticboy/vim-markdown')

    call dein#end()
    call dein#save_state()
endif

" Prefrences

syntax on
set termguicolors
colorscheme nord
set number 

let g:lightline = { 'colorscheme': 'nord', }
let g:sneak#label = 1

" Tab Preferences
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set nowrap

" Keymaps

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>

nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
