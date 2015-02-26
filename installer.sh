#!/usr/bin/env bash
#
# nar-installer - Simple Bash script to install packages like using `npm install -g`
# Code: https://github.com/h2non/nar-installer
# License: wtfpl
#

# Customize this!
VERSION=$1
NAME="package"
URL="https://github.com/you/$NAME/releases/download/$VERSION/$NAME-$VERSION"

os=`uname`
if [[ "$os" == 'Linux' ]]; then
   platform='linux'
elif [[ "$os" == 'Darwin' ]]; then
   platform='darwin'
else
  echo "Unsupported operative system. Only Linux and OSX are supported" && exit 1
fi

if [ `uname -m` != 'x86_64' ]; then
  echo "Unsupported processor architecture. Only x64 is supported" && exit 1
fi

if [ -z `which curl` ]; then
  echo "Cannot find curl binary in PATH. Install it to continue" && exit 1
fi

INSTALL_PATH="$HOME/.npm/$NAME"
if [ ! -d $INSTALL_PATH ]; then
  INSTALL_PATH="$HOME/.$NAME"
fi

if [ -d "$INSTALL_PATH" ]; then
  echo "Package $NAME is already installed in $INSTALL_PATH.\nRemove it to continue"
  exit 1
fi

echo "Downloading package $NAME v.$VERSION"
echo

download="$URL-$platform-x64.nar"
curl -k -L $download -o $NAME.nar

if [ $? != 0 ]; then
  echo "Error while downloading binary from $download.\nExit code $?" && exit 1
fi

bash $NAME.nar extract -o $INSTALL_PATH
mv .nar/bin/node $INSTALL_PATH/bin

echo "#!/usr/bin/env bash" > $INSTALL_PATH/bin/_run
echo 'script="$(readlink ${BASH_SOURCE[0]})"' >> $INSTALL_PATH/bin/_run
echo 'base="$(dirname $script)"' >> $INSTALL_PATH/bin/_run
echo '$base/node $base/'"$NAME "'$*' >> $INSTALL_PATH/bin/_run

if [ -f /usr/bin/$NAME ]; then
  rm -f /usr/bin/$NAME
fi

ln -s $INSTALL_PATH/bin/_run /usr/bin/$NAME
chmod +x $INSTALL_PATH/bin/$NAME
chmod +x /usr/bin/$NAME

rm -f $NAME.nar
rm -rf .nar

echo
echo "The installation of $NAME was completed"
echo
echo "$NAME command-line is also available from PATH. Use:"
echo "$NAME --version"
echo
