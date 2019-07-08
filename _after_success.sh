# !/bin/sh
set -e
cd src
wget -c https://github.com/probonopd/uploadtool/raw/master/upload.sh
if [ "$ARTISAN_OS" = "osx" ]; then bash upload.sh artisan*.dmg; fi
if [ "$ARTISAN_OS" = "rpi" ]; then bash upload.sh artisan*.deb; fi
if [ "$ARTISAN_OS" = "linux" ]; then bash upload.sh artisan*.rpm artisan*.deb; fi
