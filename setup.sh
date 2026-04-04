#!/usr/bin/env bash

dry_run_args='-CD'
for i in "$@"; do
	case $i in
		--frfr)
			dry_run_args=''
			shift 
			;;
	esac
done

DOTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ansible-playbook $DOTS_DIR/ansible/local.yml --extra-vars "dots_dir=$DOTS_DIR" --ask-become-pass ${dry_run_args}

