#!/usr/bin/env bash

DOTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ansible-playbook $DOTS_DIR/ansible/local.yml --extra-vars "dots_dir=$DOTS_DIR" --ask-become-pass -CD

# yay -S git
#
# ln -s $DOTS_DIR/tmux.conf $HOME/tmux.conf
# if ! [ -d $HOME/tmux ] ; then
# 	mkdir $HOME/.tmux
# 	git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
# fi
#
# for config_dir in ls $DOTS_DIR/.config ; do
# 	link_target="$DOTS_DIR/.config/$config_dir"
# 	link_name="$HOME/.config/$config_dir"
# 	if [ -d $link_name ]; then
# 		rm -rf $link_name
# 	fi
# 	ln -s $link_target $link_name
# done
