#!/bin/bash

log_error() {
    echo "`date` ERROR - $1" | tee -a setup_dev.log
    exit 1
}

log_info() {
    echo "`date` INFO - $1" | tee -a setup_dev.log
}


log_info 'Updating System...'
sudo apt update -y || log_error 'Failed to Update System!'
log_info 'Updated System...'

log_info 'Updating Package Index...'
sudo apt install software-properties-common apt-transport-https wget || log_error 'Failed to Update the Package Index!'
log_info 'Updated the Package Index...'

log_info 'Installing Microsoft GPG key'
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - || log_error 'Failed to install the Microsoft GPG key'
log_info 'Installed Microsoft GPG key'

log_info 'Enabling VS Code Repositories'
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" || log_error 'Failed to enable to VS Code Repositories'
log_info 'Enabled to VS Code Repositories'

log_info 'Installing VS Code'
sudo apt install code || log_error 'Failed to install VS Code'
log_info 'Installed VS Code'


log_info 'Installing C++ Tools'
code --install-extension ms-vscode.cpptools || log_error 'Failed to install C++ Tools'
log_info 'Installed C++ Tools'

log_info 'Installing Go Tools'
code --install-extension ms-vscode.go || log_error 'Failed to install Go Tools'
log_info 'Installed Go Tools'

log_info 'Installing Go Outliner'
code --install-extension 766b.go-outliner || log_error 'Failed to install Go Outliner'
log_info 'Installed Go Outliner'

log_info 'Installing Doyxgen Generator'
code --install-extension cschlosser.doxdocgen || log_error 'Failed to install Doxygen Generator'
log_info 'Installed Doxygen Generator'

log_info 'Installing CMake Tools'
code --install-extension vector-of-bool.cmake-tools || log_error 'Failed to install CMake Tools'
code --install-extension twxs.cmake || log_error 'Failed to install CMake Tools'
log_info 'Installed CMake Tools'

log_info 'Installing Python Tools'
code --install-extension ms-python.python || log_error 'Failed to install Python tools'
log_info 'Installed Python Tools'

log_info 'Installing C++ Linting Tools'
code --install-extension jbenden.c-cpp-flylint || log_error 'Failed to install C++ linting tools'
log_info 'Installed C++ Linting Tools'

log_info 'Installing AStyle'
code --install-extension chiehyu.vscode-astyle || log_error 'Failed to install AStyle'
log_info 'Installed AStyle'

log_info 'Installing Bash IDE'
code --install-extension mads-hartmann.bash-ide-vscode || log_error 'Failed to install Bash IDE'
log_info 'Installed Bash IDE'