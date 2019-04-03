function get_distro() {
    local distro=''
    if yum 2>/dev/null; then
        distro='RHEL'
    else
        distro='Ubuntu'
    fi

    echo ${distro}
}


function get_os() {
    local os=''

    if [[ "$OSTYPE" == "linux-gnu" ]]; then
            os=$(get_distro)
    elif [[ "$OSTYPE" == "darwin"* ]]; then
            os="$OSTYPE"
    elif [[ "$OSTYPE" == "cygwin" ]]; then
            os="$OSTYPE"
    elif [[ "$OSTYPE" == "msys" ]]; then
            os="$OSTYPE"
    elif [[ "$OSTYPE" == "win32" ]]; then
            os="$OSTYPE"
    elif [[ "$OSTYPE" == "freebsd"* ]]; then
            os="$OSTYPE"
    else
            os="unkown"
    fi

    echo ${os}
}