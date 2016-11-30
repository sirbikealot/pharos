set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
"Plugin 'rking/ag.vim'
"Plugin 'Raimondi/delimitMate'
"Plugin 'heartsentwined/vim-emblem'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'slim-template/vim-slim'
"Plugin 'iandoe/vim-osx-colorpicker'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'mustache/vim-mustache-handlebars'
call vundle#end()

filetype plugin indent on
syntax enable

execute pathogen#infect()

set number
set statusline=%f
set laststatus=2
set nocursorline
set vb t_vb=
set clipboard=unnamed
colorscheme peachpuff

:runtime macros/matchit.vim

set background=light

set tabstop=2
set shiftwidth=2
set expandtab

"let g:vroom_clear_screen = 0
let g:CommandTWildIgnore=&wildignore .
  \ ",**/.git/*" .
  \ ",**/bower_components/*" .
  \ ",**/node_modules/*" .
  \ ",**/tmp/*"

let mapleader=' '
map <leader>vv  :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>cc  :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>mm  :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>js  :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map <leader>css :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>rs  :CommandTFlush<cr>\|:CommandT spec<cr>
map <leader>ss  :CommandTFlush<cr>\|:CommandT app/services<cr>
map <leader>gg  :topleft 75 :vs Gemfile<cr>
map <leader>rr  :topleft 75 :vs config/routes.rb<cr>
map <leader>app :topleft 75 :vs config/application.rb<cr>
map <leader>sd  :topleft 75 :vs db/seeds.rb<cr>
map <leader>mig :CommandTFlush<cr>\|:CommandT db/migrate<cr>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e   :edit %%<cr>
map ,t :w\|:!rspec spec
map ,r :w\|:!ruby %:t<cr>
map ,t :w\|:!rspec %:p<cr>
map ,, :w<cr>
map qq :q!<cr>
map vrc :vs ~/.vimrc<cr>
map sc :source ~/.vimrc<cr>

nmap <S-K> O<Esc>j
nmap <S-J> o<Esc>k

au BufRead,BufNewFile *.embl setfiletype emblem

