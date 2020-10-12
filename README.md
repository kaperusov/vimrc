# vimrc

Install Vim plugin manager [Vundel.vim](https://github.com/VundleVim/Vundle.vim):

```shell
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

And theme [gruvbox](https://github.com/morhetz/gruvbox). 

```shell
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
```

Then copy `.vimrc` to `~/.vimrc` and in terminal 

```
vim +PluginInstall +qall
```

or lunch vim and type: `:PluginInstall`


Result:

```
  ~/.vim/bundle/
    command-t
    gruvbox
    nerdtree
    sparkup
    vim-fugitive
    Vundle.vim
```



