# [nar](https://github.com/h2non/nar)-installer

Dead simple Bash script to download and install [nar](https://github.com/h2non/nar) self-contained executable packages in a similar way like npm does via `npm install --global`

Useful to provide an easy one-command install solution for your packages

Only works in GNU/Linux, OSX and SunOS. Requires `curl`

## Generate binaries

Create `nar` executable archives of your package for multiple platforms:
```bash
nar --executable --os linux --arch x64
nar --executable --os darwin --arch x64
```

Then you can upload the `nar` archives to a Github tag, S3 or whatever you want

## CLI

Arguments
```bash
./installer.sh <version> [flags]
```

Supported flags
```bash
-f, --force - Force package installation, removing old installations
-p, --path  - Installation path. Default to ~/.npm or ~/ 
```

## Usage

Fetch the installer script:
```bash
curl -O -L -k https://raw.githubusercontent.com/h2non/nar-installer/master/installer.sh
```

Open `installer.sh` in your favorite editor and customize the following values:
```bash
NAME="project-name"
URL="https://github.com/you/$NAME/releases/download/$VERSION/$NAME-$VERSION"
```

Save your changes and simply run the script to install your package. 

Example downloading the installer script and running it:
```bash
curl -L https://github.com/you/project/tree/installer.sh | sudo bash 0.1.0
```

## Examples

Projects using `nar-installer`:

- [Apitance](https://github.com/h2non/apitance)

## License

WTFPL
