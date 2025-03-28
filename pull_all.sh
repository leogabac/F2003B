#!/bin/bash

echo -e "\e[33mUpdating all submodules...\e[0m"

git pull origin $(git rev-parse --abbrev-ref HEAD)


git submodule update --init --recursive
git submodule foreach --recursive git pull origin $(git rev-parse --abbrev-ref HEAD)

echo -e "\e[32mAll submodules updated successfully!\e[0m"

