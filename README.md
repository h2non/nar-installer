# [nar](https://github.com/h2non/nar)-installer

Dead simple Bash script to download and proper install [nar](https://github.com/h2non/nar) executable packages.
Analog to `npm install --global`

Useful while distributing your `nar` binary package as one-command line install solution

Only works in GNU/Linux, OSX and SunOS

## Generate binaries

Create `nar` executable archives of your package for multiple platforms:
```bash
nar --executable --os linux --arch x64
nar --executable --os darwin --arxh x64
```

Then you may upload the `nar` archives to Github, S3 or whatever you want

## Usage

Fetch the installer script:
```bash
curl -O -L -k https://raw.githubusercontent.com/h2non/nar-installer/master/installer.sh
```

Open `installer.sh` in your favorite editor and customize the following values:
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
