# rivotti.vim

VimL plugin with my personal configuration intended to be used as a
 [vim-plug](https://github.com/junegunn/vim-plug)'s plugin.

## Instalation

Install [vim-plug](https://github.com/junegunn/vim-plug):

```
curl -sfLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Create `.vimrc`:

```
cat << EOF > $HOME/.vimrc
call plug#begin()
if !empty(glob("$HOME/.vim/plugged/rivotti.vim/.vimrc"))
    source $HOME/.vim/plugged/rivotti.vim/.vimrc
endif
Plug 'ARivottiC/rivotti.vim'
call plug#end()
EOF
```

Install all plugins:

```
vim -e -i NONE -c "PlugInstall" -c "so \$MYVIMRC" -c "PlugInstall" -c "qa"
```
