My vim configuration

Setup on Windows:

    cd %USERPROFILE%
    git clone https://github.com/stevenl/.vim.git
    mklink _vimrc .vim\.vimrc

    # download files for submodules
    cd .vim
    git submodule init
    git submodule add
    vim +BundleInstall +qall
