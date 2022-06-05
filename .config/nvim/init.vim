" Neovim configuration
" Defaults: https://neovim.io/doc/user/vim_diff.html#nvim-defaultS
" Additional guide: https://medium.com/geekculture/neovim-configuration-for-beginners-b2116dbbde84

" vim-plug, stores plugins in ~/.vim/plugged
" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'tpope/vim-sensible'      " Sensible defaults

" Visuals
" https://github.com/rmehri01/onenord.nvim
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'  " Lua version of vim-devicons

Plug 'easymotion/vim-easymotion'  " Jump to highlight by char

" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdcommenter'

" General Functionality
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " Better syntax highliting
Plug 'RRethy/vim-illuminate'  " Highlight other occurences
Plug 'airblade/vim-gitgutter'  " Git Plugin
Plug 'tpope/vim-surround'


" Coding related
"Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Code completition
Plug 'neovim/nvim-lspconfig'

" Language specific plugins
" Go
Plug 'fatih/vim-go', { 'for': 'go' }

call plug#end()


" Visuals
colorscheme onenord

" Statusline (lualine)
lua << END
require('lualine').setup()
END

set wildmode=longest,list,full

" --- LSP Config
lua << END
require('lspconfig').gopls.setup{}
END



" --- Keybindings
"
" Set mapleader first so it works in plugins
 let mapleader = " "

" Toggle NerdTree
"noremap <silent> <leader>t :NERDTreeToggle<CR>
 noremap <silent> <leader>t :NERDTreeToggleVCS<CR>

" Show current file in NerdTree
 nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" git fugitive
 nnoremap <leader>g :Git<CR>

" switch buffer
 nnoremap <Leader>b :buffers<CR>:buffer<Space>

" switch relative/absolute numbers
 nnoremap <Leader>r :set relativenumber!<CR>



" Split pane settings
" open new split panes to right and below
 set splitright
 set splitbelow

" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" NerdTree Settings
 let g:NERDTreeGitStatusUseNerdFonts = 1  " Use NerdFonts for git status in tree
 let NERDTreeQuitOnOpen = 1  " Automatically close NERDTree on file open

" NERDTree appearance
 let NERDTreeMinimalUI = 1
 let NERDTreeDirArrows = 1

" Close window if NERDTree is the last one
 autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically open NERDTree when no file is provided
 autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTreeVCS | endif

" Toggle NerdTree
"noremap <silent> <leader>t :NERDTreeToggle<CR>
 noremap <silent> <leader>t :NERDTreeToggleVCS<CR>

" Show current file in NerdTree
 nnoremap <silent> <Leader>v :NERDTreeFind<CR>


" Search settings
set showmatch     " Show matching parenthesis
set ignorecase    " case-insensitive search

"set cc=80         " line at 80 char
set cursorline    " Highlight current line

" Linenumbers and signcolumn
" Setting number and relativenumber enables hybrid number
set number

" Enable relative linenumbers automatically
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

" Always display signcolumn
set signcolumn=yes

highlight! link SignColumn LineNr

filetype plugin indent on
