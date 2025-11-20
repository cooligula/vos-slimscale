#!/bin/bash
set -e

# The shell expands *.deb to "1-libjpeg... 2-libdlib..." automatically.
# dpkg installs them in that order, but keeps the transaction open so 
# dependencies resolve instantly.
dpkg -i /deb-pkgs/*.deb

# Only fix dependencies AFTER both are installed
apt-get install -f -y