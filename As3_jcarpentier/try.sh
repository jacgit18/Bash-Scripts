#!/bin/bash -e



while getopts "xyz:" opt_var1; do
    case $opt_var1 in
          x) echo "-x was triggered $OPTARG" >&2 ;;
          y) echo "-y was triggered " >&2 ;;
          z) echo "-z was triggered, Parameter: $OPTARG" >&2;;
      
    esac
done
exit 0