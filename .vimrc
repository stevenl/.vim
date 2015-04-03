set nocompatible                " Use Vim rather than Vi settings

" F2 = toggle line numbering
" F3 = toggle showing invisible characters
" F4 = previous color scheme
" F5 = next color scheme

nmap <f2> :set number! number?<cr>
nmap <f3> :set list! list?<cr>
highlight LineNbr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE guifg=DarkGrey guibg=NONE
highlight NonText ctermfg=8 guifg=gray

" Bundles
filetype off                    " required by Vundle
set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Theme
colorscheme default
source ~/.vim/cyclecolor.vim

" Status line
Bundle 'bling/vim-airline'
set laststatus=2                " always show the status line
set encoding=utf-8              " powerline needs to display unicode characters
let g:airline_left_sep=''       " don't use arrows in status line
let g:airline_right_sep=''      " to avoid need for patched fonts

" Git
Bundle 'tpope/vim-fugitive'

" Display tags to get a structural overview
Bundle 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
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

"Bundle 'vim-perl/vim-perl'

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set backup
set backupcopy=yes
set backupdir=/tmp,.
set directory=.,/tmp//
set clipboard=unnamed           " use system clipboard

" autocmd BufWritePre * :%s/\s\+$//e  " strip trailing spaces
nnoremap <Leader>W :%s/\s\+$//e<CR>

syntax on                       " switch on syntax highlighting
set number                      " display line numbers
set backspace=indent,eol,start  " delete over line breaks and indentation
set showmatch                   " show matching brackets
set matchpairs+=<:>             " allow % to bounce between angles too

set textwidth=95                " wrap at this column
if version >= 703
    set colorcolumn=80,100      " set a column marker
endif

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
set incsearch                   " refine search as you type
set ignorecase                  " searches are not case-sensitive
set smartcase                   " case-sensitive if search contains uppercase
set gdefault                    " replace all matches on line, not just the first

" fold settings
set foldmethod=indent           " fold based on indentation levels
set foldnestmax=5               " deepest fold level
set nofoldenable                " dont fold by default

if has('mouse')
    set mouse=a                 " enable use of a mouse with the terminal
endif

" Ensure that cursor shape changes between insert and normal mode in iTerm2
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
