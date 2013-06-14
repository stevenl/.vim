" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" bundles
filetype off                   " required!
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-powerline'
set laststatus=2                " always show the status line
set encoding=utf-8              " powerline needs to display unicode characters
" get font from https://github.com/eugeneching/consolas-powerline-vim
set guifont=Consolas\ for\ Powerline\ FixedD:h9
let g:Powerline_symbols = 'fancy'

"Bundle 'vim-perl/vim-perl'

set clipboard=unnamed           " use system clipboard

colorscheme koehler
syntax on                       " switch on syntax highlighting
set number                      " display line numbers
set backspace=indent,eol,start  " delete over line breaks and indentation
set textwidth=78                " wrap at this column
set colorcolumn=80              " set a column marker
set showmatch                   " show matching brackets
set matchpairs+=<:>             " allow % to bounce between angles too

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set tabstop=4                   " indentation size
set softtabstop=4               " backspace spaces as tabs
set shiftwidth=4                " indent/outdent (>>, <<, ==) level
set expandtab                   " convert tabs to spaces
"set autoindent                  " use same indentation as prev line
set cindent                     " auto C-style indentation
inoremap <S-Tab> <C-V><Tab>
                                " shift-tab inserts a real tab
" search
set hlsearch                    " highlight search results
set incsearch                   " refine search as you type
set ignorecase                  " searches are not case-sensitive

autocmd BufWritePre * :%s/\s\+$//e  " strip trailing spaces

" fold settings
set foldmethod=indent           " fold based on indentation levels
set foldnestmax=5               " deepest fold level
set nofoldenable                " dont fold by default

set backupdir=.\.backup,C:\temp,.
set directory=.,.\.backup,C:\temp
