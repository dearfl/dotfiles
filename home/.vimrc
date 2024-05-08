" set bash as the default shell
set shell=/bin/bash
let mapleader = "\<Space>"

" don't try to compatible with vi
set nocompatible

call plug#begin('~/.vim/plug')

Plug 'junegunn/vim-plug'

" colorscheme
Plug 'morhetz/gruvbox'

" vim enhancements
Plug 'ciaranm/securemodelines'
Plug 'editorconfig/editorconfig-vim'
Plug 'justinmk/vim-sneak'
Plug 'machakann/vim-highlightedyank'
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'

" fuzzy finder
" Plug 'airblade/vim-rooter'
" fzf itself is managed by portage
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" language support
" Plug 'plasticboy/vim-markdown'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'dense-analysis/ale'

" Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'

"Plug 'bfrg/vim-cpp-modern'
"Plug 'davidhalter/jedi-vim'
"Plug 'xavierd/clang_complete'

" Plug 'davidhalter/jedi-vim'
" Plug 'xavierd/clang_complete'
" Plug 'scrooloose/nerdtree'
" Plug 'bfrg/vim-cpp-modern'

" Plug 'ap/vim-css-color'
" Plug 'gko/vim-coloresque'
" Plug 'skammer/vim-css-color'
" Plug 'chrisbra/Colorizer'

call plug#end()
" basic setup
set number
set relativenumber
" set textwidth=80
set wrap
set linebreak
set laststatus=2
syntax on
" show current mode
set showmode
set encoding=utf-8
set t_Co=256
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showmatch
" highlight search
set hlsearch
set incsearch
set ignorecase
set smartcase
set history=10000
set autoread
set wildmenu
set path+=**

syntax on
filetype plugin indent on

"Plugin jedi
" let g:clang_use_library = 1
" let g:clang_library_path='/usr/lib/llvm/12/lib64'
" let g:clang_complete_auto = 0
" let g:clang_complete_copen = 1
" let g:jedi#popup_on_dot = 1
" let g:jedi#auto_initialization = 1
" let g:jedi#completions_command = "<C-space>"
" let g:jedi#goto_command = "<C-k>"
" let g:jedi#auto_vim_configuration = 1
" let g:jedi#completions_enabled = 1
" let g:jedi#show_call_signatures = 1

let g:lsp_diagnostics_enabled = 0

let g:highlightedyank_highlight_duration = 3000
let g:fzf_layout = { 'down': '~20%' }

" colorizer
let g:colorizer_auto_filetype='css,html,cpp'

" Trigger configuration. You need to change this to something other than <tab>
" if you use one of the following:
" " - https://github.com/Valloric/YouCompleteMe
" " - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

colorscheme gruvbox
set bg=dark

" Highlight Trailing Spaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Disable arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" left and right key switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" auto completion
" inoremap <expr> <tab> pumvisible() ? "\<down>" : "\<tab>"
" inoremap <expr> <s-tab> pumvisible() ? "\<up>" : "\<tab>"

" Control+j/Control+c as ESC
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
inoremap <C-c> <Esc>
cnoremap <C-c> <Esc>

" open fzf
map <C-p> :Files<CR>
map <leader>; :Buffers<CR>
map <leader><leader> <c-^>

" for format leetcode code
nmap <leader>z gg=G:%s/^    //g<CR>

