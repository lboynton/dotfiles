#!/bin/bash
rsync --exclude ".git/" --exclude "install.sh" --exclude "README.md" -av . ~
source ~/.bashrc
