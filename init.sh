DOTFILES=$(pwd)

make decrypt_conf

cp $DOTFILES/.env          ~/.env
cp $DOTFILES/.bash_profile ~/.bash_profile

rm $DOTFILES/.env

source ~/.bash_profile