#!/usr/bin/env bash

  generate_acronym () {
    local phrase="$1"    
    local acronym=""

    phrase=$(echo "$phrase" | tr '[:lower:]' '[:upper:]')
    phrase=${phrase//[^A-Z\']/ }

    for word in $phrase; do
        acronym+="${word:0:1}"
    done

    echo "$acronym"
  }

  generate_acronym "$@"