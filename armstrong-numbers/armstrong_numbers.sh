#!/usr/bin/env bash

  is_armstrong () {
    local number="$1"    
    local sum=0
    local digit_count=${#number}
    local temp_number="$number"

    while [ "$temp_number" -gt 0 ]; do
        local digit=$(( temp_number % 10 ))
        sum=$(( sum + digit ** digit_count ))
        temp_number=$(( temp_number / 10 ))
    done

    if [ "$sum" -eq "$number" ]; then
        echo "true"
    else
        echo "false"
    fi
  }

  is_armstrong "$@"