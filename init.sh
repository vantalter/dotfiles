#!/usr/bin/env bash

make decrypt_conf

cp .env          ~/.env
cp .bash_profile ~/.bash_profile
cp .gitconfig    ~/.gitconfig
cp .gitignore	 ~/.gitignore
cp .vimrc	 ~/.vimrc

rm .env

source ~/.bash_profile
