#!/usr/bin/env bash

  raindrop_sounds () {
    local num=$1
    local result=""

    if (( num % 3 == 0 )); then
        result+="Pling"
    fi
    if (( num % 5 == 0 )); then 
        result+="Plang"
    fi
    if (( num % 7 == 0 )); then 
        result+="Plong"
    fi

    if [ -z "$result" ]; then
        result="$num"
    fi

    echo "$result"
  }

  raindrop_sounds "$@"