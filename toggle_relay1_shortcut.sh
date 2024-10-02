#! /usr/bin/bash
# A portion of the following line has been taken from here: https://stackoverflow.com/a/246128
file_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

flock -n "$file_dir/toggle_relay1.lock" "$file_dir/toggle_relay1.sh"
