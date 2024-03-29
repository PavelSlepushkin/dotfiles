# dotfiles

## Setup
```sh
git init --bare $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles remote add origin git@github.com:PavelSlepushkin/dotfiles.git
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:PavelSlepushkin/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

## Configuration
```sh
dotfiles config status.showUntrackedFiles no
dotfiles remote add origin git@github.com:PavelSlepushkin/dotfiles.git
```

## Usage
```sh
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'Add gitconfig'
dotfiles push
```

### Decription:
https://www.atlassian.com/git/tutorials/dotfiles
