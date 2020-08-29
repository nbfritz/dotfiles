nbfritz's dotfiles
------------------

Clone this repo to ~/dotfiles or somewhere similar.

After cloning it, set up the submodules with:

    git submodule init && git submodule update

Once the vimconfig submodule is created, update its submodules like so:

    pushd vimconfig && git submodule init && git submodule update && popd

Run the following script to symlink the configs appropriately:

    sh scripts/create-dotfiles-symlinks.sh

A bunch of my standard fonts can be found in the /fonts folder


## Setting up dotfiles ALONG with the rest of a WSL linux environment:

This script should do it all!

```sh
sh -c $(curl -fsSL https://raw.github.com/nbfritz/dotfiles/master/bin/linux-setup.sh)
```
