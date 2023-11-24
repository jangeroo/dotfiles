# dotfiles

## Initial setup

This repo was created following the following commands:

  ```sh
  $ git init --bare $HOME/.dotfiles
  $ alias dotgit='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  $ dotgit config status.showUntrackedFiles no
  $ dotgit remote add origin git@github.com:jangeroo/dotfiles.git

  $ dotgit add ~/.gitconfig
  $ dotgit commit -m "Git dotfiles"
  $ dotgit push origin master
  ```

`--git-dir` tells Git where the history lives and `--work-tree` tells Git where the snapshot lives.
We create an aliased command and add it to `.zshrc` to not have to specify these options manually on every change to the repo.


## Copying dotfiles to another machine
```sh
$ git clone \
   --separate-git-dir=$HOME/.dotfiles \
   git@github.com:jangeroo/dotfiles.git \
   dotfiles-tmp
$ rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
$ rm -rf dotfiles-tmp

# Followed by...
$ . .dotfiles/setup.sh
```

`--separate-git-dir` tells Git that the history should live in `$HOME/.dotfiles` even though the snapshot will live in `dotfiles-tmp` (an arbitrary temporary directory that we’ll delete once we’ve moved the dotfiles into their proper locations).


## Further reading

- See [Stegosaurus Dormant](https://stegosaurusdormant.com/bare-git-repo/) for a full explanation of everything above
- [Setup and replication cheatsheet](https://github.com/Siilwyn/my-dotfiles/tree/master/.my-dotfiles)

For more information about zshell startup files, see:
- https://www.zerotohero.dev/zshell-startup-files/
- https://zsh.sourceforge.io/Doc/Release/zsh_toc.html#SEC_Contents
