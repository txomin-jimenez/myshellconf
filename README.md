# Myshellconf

![powerlevel9k Theme for ZSH Screenshot](https://camo.githubusercontent.com/31da002de611cfef95f6daaa8b1baedef4079703/687474703a2f2f6268696c6275726e2e6f72672f636f6e74656e742f696d616765732f323031352f30312f706c396b2d696d70726f7665642e706e67)


Hello there! This is **myshellconf**.

![powerlevel9k Theme for ZSH Screenshot](https://camo.githubusercontent.com/80ec23fda88d2f445906a3502690f22827336736/687474703a2f2f692e696d6775722e636f6d2f777942565a51792e676966)



## Prerequisite
* git
* homebrew

## Installation

* Clone repo

```
git clone https://github.com/txomin-jimenez/myshellconf.git

```

* Install oh-my-zsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

```
* Install tmux:

```
brew install tmux

```

* Create links:

```
mv ~/.zshrc .zshrc_old
ln ~/myshellconf/zshrc .zshrc
touch ~/zshrc00 
ln ~/myshellconf/vimrc .vimrc
ln ~/myshellconf/tmux.conf .tmux.conf
ln ~/myshellconf/tmuxline.conf .tmuxline.conf
ln ~/myshellconf/gitconfig .gitconfig
ln -s ~/myshellconf/vim .vim
ln -s ~/myshellconf/shell-apps shell-apps
ln ~/myshellconf/shell-apps/z/z.sh /usr/local/etc/profile.d/z.sh

```

* Install powerline-fonts:

```
cd ~
git clone https://github.com/powerline/fonts.git
./~/fonts/install.sh

```

* Configure terminal font (example):

```
Terminal -> Preferences -> Profiles -> Fonts -> DroidSansMonoSlashed

```