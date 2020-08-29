# Setup for Debian WSL

echo "********************************************************************************"
echo "  Updating Linux Packages"
echo "********************************************************************************"

sudo apt update
sudo apt upgrade -y
sudo apt install -y vim tmux git zsh curl wget
sudo apt install -y --no-install-recommends \
                 autoconf bison make build-essential libssl-dev zlib1g-dev libbz2-dev \
                 libreadline-dev libsqlite3-dev llvm libncurses5-dev xz-utils \
                 tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev libyaml-dev \
                 libreadline6-dev libgdbm6 libgdbm-dev libdb-dev



echo
echo "********************************************************************************"
echo "  Installing OhMyZsh"
echo "********************************************************************************"

if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "SKIPPING..."
fi


echo
echo "********************************************************************************"
echo "  Installing ASDF"
echo "********************************************************************************"
  
if [ ! -d ~/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0-rc1
  asdf plugin add python
  asdf plugin add ruby
  asdf plugin add nodejs
else
  echo "SKIPPING..."
fi


echo
echo "********************************************************************************"
echo "  Creating SSH Identity"
echo "********************************************************************************"
  
if [ ! -f ~/.ssh/id_rsa ]; then
  ssh-keygen
  cat ~/.ssh/id_rsa.pub | /mnt/c/Windows/system32/clip.exe
  echo "The clipboard now contains the public key. Paste it into github!"
  echo "Press [ENTER] to continue..."
  read _
else
  echo "SKIPPING..."
fi


echo
echo "********************************************************************************"
echo "  Installing dotfiles"
echo "********************************************************************************"

  
if [ ! -d ~/.dotfiles ]; then
  git clone git@github.com:nbfritz/dotfiles ~/.dotfiles
  sh ~/.dotfiles/setup.sh
else
  echo "SKIPPING..."
fi
