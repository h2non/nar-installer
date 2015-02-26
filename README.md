# [nar](https://github.com/h2non/nar)-install

Dead simple Bash script to download and proper install nar executable packages. Analog to `npm install --global`

Only works in GNU/Linux, OSX and SunOS

## Usage

Clone this repository and switch into it
```bash
git clone https://github.com/h2non/nar-install && cd nar-installer
```

Open it in your favorite editor and customize the following line
```bash
PACKAGE_URL="https://github.com/you/project/archives/$VERSION/download"
```

Save your changes and use the script in your project
```bash
curl -L https://github.com/you/project/tree/installer.sh 0.1.0 | sudo bash
```

## License

WTFPL
