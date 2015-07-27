pushd `dirname $0` > /dev/null
cd ..
DOTFILES=$PWD
popd > /dev/null

ln -s ${DOTFILES}/configs/Gemfile       ~/Gemfile
ln -s ${DOTFILES}/configs/Gemfile.lock  ~/Gemfile.lock
ln -s ${DOTFILES}/configs/bash_shared   ~/.bash_shared
ln -s ${DOTFILES}/configs/riplrc        ~/.riplrc
ln -s ${DOTFILES}/configs/slate         ~/.slate
ln -s ${DOTFILES}/configs/tmux.conf     ~/.tmux.conf

ln -s ${DOTFILES}/vimconfig/.vimrc      ~/.vimrc
ln -s ${DOTFILES}/vimconfig             ~/.vim

ln -s ${DOTFILES}/scripts               ~/scripts

echo if this is OS X, remember to:
echo   ln -s ${DOTFILES}/configs/bash_profile.osx ~/.bash_profile
