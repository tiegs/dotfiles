" --- Set up vundle
" Requires vundle to be installed
set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --- Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/vim-easy-align'
Plugin 'preservim/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on
" --- Vundle done


" --- Keybindings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" GitGutter Style
let g:gitgutter_set_sign_backgrounds = 1
highlight GitGutterAdd    guifg=#009900 ctermfg=2 term=bold cterm=bold
highlight GitGutterChange guifg=#bbbb00 ctermfg=3 term=bold cterm=bold
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 term=bold cterm=bold

" Make git status appear faster than the default 4 sec
set updatetime=100

" Enable powerline fonts for airline
let g:airline_powerline_fonts = 1

" Automatically display all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1


" --- Settings
set shell=/bin/bash
syntax on
set number
set noswapfile
set hlsearch 
set ignorecase
set incsearch
set showmatch

" Always display signcolumn
set signcolumn=yes

"Transparent signcolum 
highlight clear SignColumn

set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

filetype plugin indent on


