#!/usr/bin/env bash

make decrypt_conf

cp .env          ~/.env
cp .bash_profile ~/.bash_profile
cp .gitconfig    ~/.gitconfig

rm .env

source ~/.bash_profile