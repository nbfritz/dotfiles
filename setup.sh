DOTFILES=`dirname $0`

cd $DOTFILES
git submodule init
git submodule update

if [ ! -f ~/.bash_shared ] ; then ln -s ${DOTFILES}/configs/bash_shared   ~/.bash_shared ; fi
if [ ! -f ~/.slate ]       ; then ln -s ${DOTFILES}/configs/slate         ~/.slate       ; fi
if [ ! -f ~/.tmux.conf ]   ; then ln -s ${DOTFILES}/configs/tmux.conf     ~/.tmux.conf   ; fi
if [ ! -f ~/.zshrc ]       ; then ln -s ${DOTFILES}/configs/zshrc         ~/.zshrc       ; fi
if [ ! -f ~/.gitconfig ]   ; then ln -s ${DOTFILES}/configs/gitconfig     ~/.gitconfig   ; fi

if [ ! -f ~/.vimrc ]       ; then ln -s ${DOTFILES}/vimconfig/vimrc       ~/.vimrc       ; fi
if [ ! -f ~/.gvimrc ]      ; then ln -s ${DOTFILES}/vimconfig/gvimrc      ~/.gvimrc      ; fi
if [ ! -d ~/.vim ]         ; then ln -s ${DOTFILES}/vimconfig             ~/.vim         ; fi
if [ ! -d ~/bin ]          ; then ln -s ${DOTFILES}/bin                   ~/bin          ; fi

echo if this is OS X, remember to:
echo   ln -s ${DOTFILES}/configs/bash_profile.osx ~/.bash_profile
