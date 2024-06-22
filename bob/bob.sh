#!/usr/bin/env bash

  bob_response () {
    local input="$1"

    input=$(echo "$input" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

    if [ -z "$input" ]; then
        echo "Fine. Be that way!"
        return
    fi

    local is_question=false
    if [[ "$input" =~ \?$ ]]; then
        is_question=true
    fi

    local is_yelling=false
    if [[ "$input" =~ [[:upper:]] ]] && ! [[ "$input" =~ [[:lower:]] ]]; then
        is_yelling=true
    fi

    if $is_question && $is_yelling; then
        echo "Calm down, I know what I'm doing!"
    elif $is_question; then  
        echo "Sure."
    elif $is_yelling; then
        echo "Whoa, chill out!"
    else
        echo "Whatever."
    fi
  }

  bob_response "$@"