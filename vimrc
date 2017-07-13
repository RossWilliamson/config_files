set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'bitc/vim-bad-whitespace'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on

set nu
set laststatus=2

au BufNewFile,BufRead *.tex
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set textwidth=0 |
	\ set autoindent |
	\ set fileformat=unix

au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2 |
	\ set softtabstop=2 |
	\ set shiftwidth=2 |
	\ set textwidth=0 |
	\ set wrapmargin=0 |
	\ set fileformat=unix

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_
noremap <F11> :set list!<CR>

set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_path_to_python_interpreter='python'

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:SimpylFold_docstring_preview=1

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

call togglebg#map("<F5>")

let g:NERDTreeHijackNetrw=0
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <F12> :NERDTreeToggle<CR>

" Set simple clear whitespace on F4
nnoremap <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
