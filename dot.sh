#!/bin/bash

#Setup script for Dotfiles
arg=$1

echo -e "\u001b[32;1mSetting up Dotfiles...\u001b[0m"

if [[ "$arg" == "-i" || "$arg" == "--install" ]]; then

    echo -e "\u001b[37;1m\u001b[4mSelect an option:\u001b[0m"
    echo -e "  \u001b[34;1m 1) for Prezto \u001b[0m"
    echo -e "  \u001b[34;1m 2) for Powerlevel10K \u001b[0m"
    echo -e "  \u001b[31;1m 0) to Exit \u001b[0m"

    read option

    case $option in

    "1")echo -e "\u001b[7mInstalling Prezto...\u001b[0m"
        git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
        for file in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/z*; do
            filename=$(basename $file)
            echo .$filename
            ln -s "$filename" "${ZDOTDIR:-$HOME}/.${filename:t}"
        done
        ;;

    "2")echo -e "\u001b[7mInstalling Powerlevel10K...\u001b[0m"
        git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
        ;;

    "0")echo -e "\u001b[4m\u001b[44m Bye \u001b[0m"
        exit 0
        ;;

    *)echo -e "\u001b[31;1m Invalid option entered. \u001b[0m"
        exit 1
        ;;
    esac

    exit 0
fi

echo -e "\u001b[33;1m Backing up existing files... \u001b[0m"
mv -iv ~/.zpreztorc ~/.zpreztorc.old
mv -iv ~/.zshrc ~/.zshrc.old

echo -e "\u001b[36;1mAdding symlinks...\u001b[0m"
ln -sfnv $PWD/.zpreztorc ~/.zpreztorc
ln -sfnv $PWD/.zshrc ~/.zshrc

echo -e "\u001b[36;1m Remove backups with 'rm ~/.*.old && rm ~/.config/*.old'. \u001b[0m"
echo -e "\u001b[32;1m Completed. \u001b[0m"
