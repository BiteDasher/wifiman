#!/bin/bash
sed "s/PREFIX\ \:\=\ \/usr\/local/PREFIX\ \:\=\ \/usr/g" -i Makefile
sed 's/PK_EXEC_DEST \:\= \\\/usr\\\/local\\\/bin/PK_EXEC_DEST \:\= \\\/usr\\\/bin/g' -i Makefile
sed "s/git\ submodule\ update\ --init\ --recursive\ \&\&\ cd\ wifiman-indicator/git\ submodule\ update\ --init\ --recursive\ \&\&\ cd\ wifiman-indicator\ \&\&\ .\/debian_patch.sh/g" -i Makefile
# Because PKExec at Debian doesn't include /usr/sbin in PATH
sed "s/\#\#\#/PATH\=\$PATH\:\/usr\/sbin\//g" -i wifiman wifigui
