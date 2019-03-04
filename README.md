# Hasan's dotfiles

My personal dotfiles for macOS development environment.

![Screenshot](https://raw.githubusercontent.com/hasanguner/dotfiles/master/etc/screenshot.png)

## Installation

First, clone the repository. I prefer to keep development-related stuffs within `~/Developer` directory.

```bash
git clone https://github.com/hasanguner/dotfiles.git
```

Before installing the dotfiles, run the following command and see occurrences. I suggest you to replace them with your own if you don't really want to see my name on everywhere :)

```bash
cd dotfiles && grep -R [hH]asan . --exclude-dir=".git"
```

Run the following command and be patient. This will take a while.

```bash
./install.sh
```

## Troubleshooting

##### macOS configurations are not working on High Siearra / Mojave

*Solution :* 

* Go `System Preferences` -> `Security & Privacy` -> `Full Disk Access`
* Grant access to `Terminal` / `iTerm`
* Restart your computer





