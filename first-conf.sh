if [ "$(uname)" = "Darwin" ]; then
  # Do something under Mac OS X platform


elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
  # Do something under GNU/Linux platform
  sudo apt install tmux zsh vim
  chsh -s $(which zsh)
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

elif [ "$(expr substr $(uname -s) 1 10)" = "MINGW32_NT" ]; then
  # Do something under Windows NT platform
fi

ln -s $PWD/zshrc ~/.zshrc
touch ~/.zshrc00
ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/vim ~/.vim
ln -s $PWD/shell-apps ~/shell-apps
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
cd ~/.oh-my-zsh && git clone https://github.com/bhilburn/powerlevel9k.git themes/powerlevel9k
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git pull && git submodule init && git submodule update && git submodule status
