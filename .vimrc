if !has('nvim')
    set nocompatible
endif

call plug#begin('~/.local/share/nvim/plugged')

"""Colour scheme
Plug 'morhetz/gruvbox'

""" list of Plugins
"Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'janko-m/vim-test'
"Plug 'kshenoy/vim-signature'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'milkypostman/vim-togglelist'
"Plug 'neomake/neomake'
Plug 'w0rp/ale'
"Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'terryma/vim-expand-region'
  "Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
"Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'yggdroot/indentline'
"Plug 'bling/vim-bufferline'
Plug 'mileszs/ack.vim'
"Plug 'ctrlpvim/ctrlp.vim'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Language specific plugins

" HTML/CSS
"Plug 'mattn/emmet-vim'
" Python
"Plug 'nvie/vim-flake8'
" Javascript/JSX
"Plug 'pangloss/vim-javascript'
"Plug 'jaawerth/nrun.vim'
"Plug 'mxw/vim-jsx'
" Elm
"Plug 'elmcast/elm-vim'
" Golang
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make' }
let g:go_def_mode = 'godef'
" Elixir
"Plug 'elixir-lang/vim-elixir'
Plug 'easymotion/vim-easymotion'

call plug#end()

filetype plugin indent on
filetype indent on
filetype on

" Theme
syntax enable
colorscheme gruvbox
if (has("termguicolors"))
 set termguicolors
endif

" Gruvbox specific settings
set background=dark

" Enable to copy to clipboard for operations like yank, delete, change and put
" http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
if has('unnamedplus')
  set clipboard^=unnamed
  set clipboard^=unnamedplus
endif

" This enables us to undo files even if you exit Vim.
"if has('persistent_undo')
  "set undofile
  "set undodir=~/.config/vim/tmp/undo//
"endif

" Map Ctrl-A and Ctrl-X to no-ops to stop number scrolling
"nmap <C-a> <Nop>
"nmap <C-x> <Nop>
" Map leader to Space
let mapleader="\<Space>"
" Map <leader>w to save file
"nnoremap <Leader>w :w<CR>
" Tie zz after all vertical navigation to force centering
"nnoremap <C-U> 11kzz
"nnoremap <C-D> 11jzz
"nnoremap j jzz
"nnoremap k kzz
"nnoremap # #zz
"nnoremap * *zz
"nnoremap n nzz
"nnoremap N Nzz

"vim-go
let g:syntastic_go_checkers = ['go']

" Cycle through tabs with a and s, as well as numbered switching
nnoremap <Leader>a gT
nnoremap gr gT
nnoremap <Leader>s gt
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>0 :tablast<cr>

""" General settings"""
"""""""""""""""""""""""
" set tab settings
set expandtab
" set cursor to line
set cursorline
" Convert tabs to spaces
set modelines=0
set clipboard=unnamed
set wrap
set number
set nowritebackup
set noswapfile
set nobackup
" Remove delay for ESC
set timeoutlen=1000 ttimeoutlen=0
" set relative line numbers
set relativenumber
" highlight search result
set hlsearch
set ignorecase
set smartcase
set lazyredraw
set ttyfast
" escape to cancel search highlights
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
" remove whitespace on save
"autocmd BufWritePre * :%s/\s\+$//e

" Fold settings
set foldmethod=indent
set foldnestmax=0

""" Plugin specific settings"""
"""""""""""""""""""""""""""""""

"fugitive
"Set diff as vertical split instead of horizontal
set diffopt+=vertical

"airline
let g:airline_theme='gruvbox'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" emmet
" enable jsx completions
let g:user_emmet_settings={
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

" vim-jsx
" Enable jsx highlighting in .js files as well
"let g:jsx_ext_required=0

" vim-json
" Don't hide quotes in json files
set conceallevel=0

" vim-go
" experimental flag to fix fold closing on save
let g:go_fmt_experimental = 1

"Neomake
"nrun plugin allows us to quickly check local eslint exec
"let g:neomake_javascript_eslint_exe=nrun#Which('eslint')
"let g:neomake_javascript_enabled_makers=['eslint']
"let g:neomake_jsx_enabled_makers=['eslint']
"let g:neomake_python_enabled_makers=['flake8']
" Run Neomake only on buffer save
"autocmd! BufWritePost,BufEnter * Neomake

" Disable inherited syntastic
"let g:syntastic_mode_map = {
  "\ "mode": "passive",
  "\ "active_filetypes": [],
  "\ "passive_filetypes": [] }

"let g:neomake_serialize = 1
"let g:neomake_serialize_abort_on_error = 1

" NERDTree
" Toggle NERDTree with Ctrl-N
map <C-n> :NERDTreeTabsToggle<CR>
" Show hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$']
" Add keyboard shortcut for revealing current file in NERDTree
nmap ,n :NERDTreeFind<CR>
nmap cd :cd %:h<CR>

" Ag
" Always start searching from project root, not cwd
let g:ag_working_path_mode="r"
let g:ackprg = 'ag --vimgrep'
nnoremap <silent> <Leader>w :Ack<Space>

" vim-expand-region
" Use v and C-v to increase and decrease region expansion
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" indentLine
" Change colour of indentation guides to a more subtle colour
"let g:indentLine_color_term=220

" Gutentags
"let g:gutentags_cache_dir='~/.config/nvim/tags/'
"let g:gutentags_ctags_exclude=['node_modules', 'env', 'vendor']

" fzf setup
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <Leader>t :Tags<CR>
nnoremap <silent> <Leader>f :Ag <C-R><C-W><CR>

" deoplete settings
let g:deoplete#enable_at_startup = 1

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = $HOME.'/github/go/deoplete/json'

" easy-motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Ctrlp
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 0

" Mouse
set mouse=a

" Go utility command
let g:go_doc_keywordprg_enabled = 0
nnoremap <Leader>s :Ag<CR>
nnoremap <Leader>i :GoImports<CR>:Neomake<CR>:w<CR>
nnoremap ga :GoAlternate<CR>
nnoremap gt :GoTest<CR>
nnoremap gl :GoImplements<CR>
nnoremap gcr :GoCallers<CR>
nnoremap gce :GoCallee<CR>

nnoremap H :tabprev<cr>
nnoremap L :tabnext<cr>

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_snippet_engine = "neosnippet"

let g:go_fmt_command = "goimports"

"Snippet config
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-e>     <Plug>(neosnippet_expand_or_jump)
smap <C-e>     <Plug>(neosnippet_expand_or_jump)
xmap <C-e>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
 "\ pumvisible() ? "\<C-n>" :
 "\ neosnippet#expandable_or_jumpable() ?
 "\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

let g:SuperTabDefaultCompletionType = "<c-n>"
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.local/share/nvim/snippets/'

" Close autocompletion when pressing enter
inoremap <silent><expr> <C-j> pumvisible() ? "\<C-Y>" : "\<CR>"

" ale setup
let g:ale_set_loclist = 1
"let g:ale_set_quickfix = 1
"let g:ale_open_list = 1
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
"let g:ale_keep_list_window_open = 1
nmap <silent> <Leader>E <Plug>(ale_previous_wrap)
nmap <silent> <Leader>e <Plug>(ale_next_wrap)

