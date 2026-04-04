#!/usr/bin/env bash

DOTS_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

ansible-playbook $DOTS_DIR/ansible/local.yml --extra-vars "dots_dir=$DOTS_DIR" --ask-become-pass -CD

