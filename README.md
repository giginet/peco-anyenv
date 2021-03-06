# peco-anyenv

Switch interpreter versions interactively with fooenv(rbenv, pyenv and others) + peco

![](https://raw.githubusercontent.com/giginet/peco-anyenv/master/images/peco-anyenv.gif)

## Install

### [zplug](https://github.com/zplug/zplug)

```sh
zplug "giginet/peco-anyenv"
```

### [antigen](https://github.com/zsh-users/antigen)

Add following statements in your `.zshrc`.

```sh
antigen bundle giginet/peco-anyenv
antigen apply
```

### Manual Install

```sh
$ git clone https://github.com/giginet/peco-anyenv.git $HOME/.peco-anyenv
$ printf '\nsource "$HOME/.peco-anyenv/peco-anyenv.sh"' >> $HOME/.bashrc
```

## How to use

Just execute `fooenv` with `p` prefix.

```sh
$ prbenv
$ prbenv --global
```

## Supported fooenv

- [rbenv](https://github.com/rbenv/rbenv)
- [pyenv + pyenv-virtualenv](https://github.com/yyuu/pyenv)
- [plenv](https://github.com/tokuhirom/plenv)
- [ndenv](https://github.com/riywo/ndenv)
- [swiftenv](https://github.com/kylef/swiftenv)

If you'd like to support another envs, of course Pull Request is welcome.

## License

MIT License
