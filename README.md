# Dotfiles for ConmyMe

clone the repository and symlink the files to their respective locations

# Setup

WIP: Use the link-all.sh script to symbolically link all configuration docs.
(not currently working)

Individual instructions included below

## NeoVim

1. Install NeoVim
2. Install vim-plug
    `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
3. Link the file `.config/nvim/init.vim` from the HOME location (/users/David)
4. Run the command `:PlugInstall` inside nvim

## tmux

1. Install tmux
    `sudo apt install tmux`
2. Symlink the tmux configuration files
    `ln -nsf dotfiles/.tmux.conf $HOME/.tmux.conf`

## Git

1. Install git
    `sudo apt install git`
2. Symlink the `.gitconfig` file to the $HOME directory

> :blue_book: It is easier to configure the gitconfig via `git config --global` commands
> if not, you have to ensure you use tabs.

