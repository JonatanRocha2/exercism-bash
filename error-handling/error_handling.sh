#!/usr/bin/env bash

  greet () {
    echo "Hello, $1"
  }

  print_usage () {
    echo "Usage: error_handling.sh <person>"
  }

  main () {
    if [ $# -eq 1 ]; then
        greet "$1"
    else
        print_usage
        exit 1
    fi
  }
  
  main "$@"
