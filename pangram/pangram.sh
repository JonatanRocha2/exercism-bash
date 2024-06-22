#!/usr/bin/env bash

  is_pangram () {
    local sentence="$1"
    local alphabet="abcdefghijklmnopqrstuvwxyz"

    local cleaned_sentence
    cleaned_sentence=$(echo "$sentence" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alpha:]')

    for letter in $(echo $alphabet | fold -w1); do
        if [[ $cleaned_sentence != *$letter* ]]; then
            echo "false"
            return
        fi
    done
    echo "true"
  }

  is_pangram "$@"