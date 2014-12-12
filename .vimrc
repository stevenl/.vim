set nocompatible                " Use Vim rather than Vi settings

" bundles
filetype off                    " required!
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'bling/vim-airline'
set laststatus=2                " always show the status line
set encoding=utf-8              " powerline needs to display unicode characters
let g:airline_left_sep=''
let g:airline_right_sep=''

Bundle 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>

" Git
Bundle 'tpope/vim-fugitive'

"Bundle 'vim-perl/vim-perl'

Bundle 'wesgibbs/vim-irblack'
colorscheme ir_black

set backup
set backupcopy=yes
set backupdir=/tmp,.
set directory=.,/tmp//
set clipboard=unnamed           " use system clipboard

syntax on                       " switch on syntax highlighting
set number                      " display line numbers
set backspace=indent,eol,start  " delete over line breaks and indentation
set textwidth=78                " wrap at this column
set colorcolumn=80              " set a column marker
set showmatch                   " show matching brackets
set matchpairs+=<:>             " allow % to bounce between angles too

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

"set autoindent                  " use same indentation as prev line
set cindent                     " auto C-style indentation
set expandtab                   " convert tabs to spaces
set shiftwidth=4                " indent/outdent (>>, <<, ==) level
set softtabstop=4               " backspace spaces as tabs
set tabstop=4                   " indentation size
inoremap <S-Tab> <C-V><Tab>
                                " shift-tab inserts a real tab
" search
set hlsearch                    " highlight search results
set ignorecase                  " searches are not case-sensitive
set smartcase                   " case-sensitive if search contains uppercase
set incsearch                   " refine search as you type

autocmd BufWritePre * :%s/\s\+$//e  " strip trailing spaces

" fold settings
set foldmethod=indent           " fold based on indentation levels
set foldnestmax=5               " deepest fold level
set nofoldenable                " dont fold by default

" Tagbar settings to recognise Perl Moose
let g:tagbar_type_perl = {
    \ 'kinds' : [
        \ 'p:packages:1:0',
        \ 'e:extends',
        \ 'r:roles',
        \ 'c:constants:0:0',
        \ 'f:formats:0:0',
        \ 'a:attributes',
        \ 's:subroutines',
        \ 'l:labels',
    \ ],
    \ 'deffile' : '$HOME/.vim/ctags/perl.cnf'
\ }
let Tlist_Show_One_File = 1

set mouse=a                     " enable use of a mouse with the terminal

" Ensure that cursor shape changes between insert and normal mode in iTerm2
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
