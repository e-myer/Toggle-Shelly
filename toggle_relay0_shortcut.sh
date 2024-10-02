#! /usr/bin/bash

# A portion of the following line has been taken from here: https://stackoverflow.com/a/246128
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

flock -n "$script_dir/toggle_relay0.lock" "$script_dir/toggle_relay0.sh"