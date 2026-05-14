> [!WARNING]
> This repository will become inactive as of May 14, 2026.
> Future project maintenance will be tracked [here](https://codeberg.org/diegoenriquezserrano/open-fonts)

# open-fonts

A collection of open source fonts. Served from a multi-region CDN and available for direct use. Served from https://fonts.diegoenriquezserrano.dev


## Index

- [Requirements](#requirements)
- [Installation](#installation)
- [Running development server](#running-the-application)
- [Building target files](#building-target-files)
- [License](#license)


## Requirements

- dart-sass
- pigz
- yarn


## Installation

### Dependencies

#### dart-sass

1. Go to the [official dart-sass releases page](https://github.com/sass/dart-sass/releases) and download the most recent package that corresponds to your system.

2. Extract the contents into the directory you want to execute it from. example:

   ```bash
   # Check for or create target directory
   [ -d ~/.local/src/ ] || mkdir ~/.local/src/
   # Assuming package downloaded to Downloads directory
   cd ~/Downloads/
   # Decompress and extract source files to target dir
   # Update accordingly for current version if necessary
   tar -xf dart-sass-1.93.2-linux-x64.tar.gz -C ~/.local/src/
   ```

3. Add the dart-sass directory to your `$PATH`. eg. Add a `export PATH="$HOME/.local/src/dart-sass:$PATH"` line to your `.bashrc` file.

---
#### pigz

1. Install using your typical system package manager. example

   ```bash
   # Debian/Ubuntu based Linux distributions
   sudo apt update && sudo apt install pigz -y;
   ```

---
#### yarn

1. If you already have `Node.js` and `npm` installed on your machine, proceed to step 2. Otherwise follow the official recommended installation instructions here: https://nodejs.org/en/download

2. Install `yarn`.

   ```bash
   npm i --global yarn
   ```

---


### Development environment

The build tools include `prettier` for formatting, `css-minify` for minifying target CSS files, and `vite` to spin up a local server with HMR for ease while developing.

1. Clone the .git repository
    ```bash
    git clone https://tangled.org/@diegoenriquezserrano.dev/open-fonts
    cd ./open-fonts
    ```

2. Install packages
    ```bash
    yarn
    ```


## Running development server

The development environment includes a vite server so that you can view live updates to `index.html` at `http://localhost:3150/`. To use it run the vite script.

  ```bash
  yarn dev
  ```


## Building target files

Running the build script will run prettier on your `/scss` directory. It will then run sass-dart to compile the scss files into the `/css` directory. After that, it will run css-minify to minimize your css into the `/min` directory, and finally, it will run `/compress.sh` to gzip your minimized files into the `/gz` directory.

You can run the build script with yarn:

```bash
yarn build
```


## License

This project is licensed under the MIT License. See the COPYING file for details.
