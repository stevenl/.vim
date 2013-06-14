My vim configuration

Setup on Windows:

    cd %USERPROFILE%
    git clone https://github.com/stevenl/.vim.git
    mklink _vimrc .vim\.vimrc
    mklink _gvimrc .vim\.gvimrc

    # download files for submodules
    cd .vim
    git submodule init
    git submodule update
    vim +BundleInstall +qall

    # install fonts from the consolas-powerline-vim directory

Issues:

>   mklink: You do not have sufficient privilege to perform this operation

At the Start menu, type `cmd` in the search box. You will see `cmd.exe` in the list. Right click on it and select "Run as Administrator".
