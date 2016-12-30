export $(cat ~/.env)
export PATH="/usr/local/sbin:$PATH"

if [ $(command -v composer) ]; then
  composer config --global github-oauth.github.com $GITHUB_API_TOKEN
  export PATH="~/.composer/vendor/bin:$PATH"
fi

if [ $(command -v git) ]; then
  git config --global core.excludesfile ~/.gitignore
  if [ ! -f ~/.gitignore ]; then
    touch ~/.gitignore
  fi
fi

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -d ~/.vim/plugged ]; then
  mkdir ~/.vim/plugged
fi

export HISTCONTROL=ignoreboth:erasedups
