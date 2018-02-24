" Plugins
call plug#begin()
  Plug 'bronson/vim-visual-star-search'
  Plug 'ervandew/supertab'
  Plug 'fatih/vim-go'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'keith/swift.vim'
  Plug 'majutsushi/tagbar'
  Plug 'mhartington/oceanic-next'
  Plug 'morhetz/gruvbox'
  Plug 'Raimondi/delimitMate'
  Plug 'scrooloose/nerdtree'
  Plug 'solarnz/thrift.vim'
  Plug 'tomtom/tcomment_vim'
  Plug 'vim-airline/vim-airline'
  Plug 'Yggdroot/indentLine'
  Plug 'w0rp/ale'
  Plug 'nvie/vim-flake8'
  Plug 'fs111/pydoc.vim'
call plug#end()

" color settings
set termguicolors
" set background=dark
" colorscheme gruvbox
colorscheme OceanicNext
let g:airline_theme='oceanicnext'

set tabstop=4
set shiftwidth=4
set expandtab

" Key bindings
map <F6> :NERDTreeTabsToggle<CR>
nnoremap <C-p> :FZF<CR>
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Other settings
filetype plugin on
set number
let mapleader = ","

" Change TARGETS to be a Python file
augroup filetypedetect
    au BufRead,BufNewFile TARGETS set filetype=python
augroup END

" Golang specific settings
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
au FileType go nmap <leader>gt :GoDeclsDir<cr>

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1
