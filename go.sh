#!/bin/bash

source `pwd`/scripts/detect_os.sh

os=$(get_os)

echo $os

    if [[ "$os" == "Ubuntu" ]]; then
        source `pwd`/scripts/setup_env_ubuntu.sh
    elif [[ "$os" == "RHEL"* ]]; then
        echo `None support OS`
    elif [[ "$os" == "darwin"* ]]; then
        echo `None support OS`
    elif [[ "$os" == "cygwin" ]]; then
        echo `None support OS`
    elif [[ "$os" == "msys" ]]; then
        echo `None support OS`
    elif [[ "$os" == "win32" ]]; then
        echo `None support OS`
    elif [[ "$os" == "freebsd"* ]]; then
        echo `None support OS`
    else
        echo `None support OS`
    fi