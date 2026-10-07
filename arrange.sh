#!/bin/bash

for char in a b c d e f g h i j k l m n o p q r s t u v w x y z; do
    shopt -s nullglob
    for file in files/"$char"* files/"$(echo "$char" | tr '[:lower:]' '[:upper:]')"*; do
        [ -f "$file" ] && mv "$file" "$char/"
    done
    shopt -u nullglob
done