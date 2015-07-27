nbfritz's dotfiles
------------------

Clone this repo to ~/dotfiles or somewhere similar.

After cloning it, set up the submodules with:

    git submodule init && git submodule update

Once the vimconfig submodule is created, update its submodules like so:

    pushd vimconfig && git submodule init && git submodule update && popd

Run the following script to symlink the configs appropriately:

    sh scripts/create-dotfiles-symlinks.sh
