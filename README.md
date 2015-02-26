# [nar](https://github.com/h2non/nar)-installer

Dead simple Bash script to download and proper install [nar](https://github.com/h2non/nar) executable packages.
Analog to `npm install --global`

Only works in GNU/Linux, OSX and SunOS

## Usage

Clone this repository and switch into it
```bash
git clone https://github.com/h2non/nar-install && cd nar-installer
```

Open it in your favorite editor and customize the following values
```bash
NAME="project-name"
PACKAGE_URL="https://github.com/you/$NAME/releases/download/$VERSION/$NAME-$VERSION"
```

Save your changes and simply run the script to install your package:
```bash
curl -L https://github.com/you/project/tree/installer.sh 0.1.0 | sudo bash
```

## Examples

Projects using nar installer:

- [Apitance](https://github.com/h2non/apitance)

## License

WTFPL
