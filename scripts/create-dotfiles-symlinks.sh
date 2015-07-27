pushd `dirname $0` > /dev/null
cd ..
DOTFILES=$PWD
popd > /dev/null

ln -s ${DOTFILES}/Gemfile           ~/Gemfile
ln -s ${DOTFILES}/Gemfile.lock      ~/Gemfile.lock
ln -s ${DOTFILES}/bash_shared       ~/.bash_shared
ln -s ${DOTFILES}/slate             ~/.slate
ln -s ${DOTFILES}/tmux.conf         ~/.tmux.conf
ln -s ${DOTFILES}/vimcofnig/.vimrc  ~/.vimrc
ln -s ${DOTFILES}/vimconfig         ~/.vim

echo if this is OS X, remember to ln -s ${DOTFILES}/.bash_profile.osx ~/.bash_profile
