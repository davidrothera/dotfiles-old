" Plugins
call plug#begin()
  Plug 'bronson/vim-visual-star-search'
  Plug 'davidhalter/jedi-vim'
  Plug 'ervandew/supertab'
  Plug 'fs111/pydoc.vim'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'keith/swift.vim'
  Plug 'majutsushi/tagbar'
  Plug 'morhetz/gruvbox'
  Plug 'nvie/vim-flake8'
  Plug 'Raimondi/delimitMate'
  Plug 'rhysd/vim-clang-format'
  Plug 'Rip-Rip/clang_complete'
  Plug 'scrooloose/nerdtree'
  Plug 'tomtom/tcomment_vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-syntastic/syntastic'
  Plug 'Yggdroot/indentLine'
call plug#end()

" Settings for syntastic c++ support
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++ -Wall'

" Settings for C++ clang_complete
let g:clang_library_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

" color settings
set termguicolors
set background=dark
colorscheme gruvbox

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
