# [nar](https://github.com/h2non/nar)-installer

Dead simple Bash script to download and install [nar](https://github.com/h2non/nar) executable packages in a similar way like npm does via `npm install --global`

Useful when you want to distribute your `nar` binary package as one-command install solution

Only works in GNU/Linux, OSX and SunOS. Requires `curl`

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
