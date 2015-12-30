# peco-anyenv

Switch interpreter versions interactively with fooenv(rbenv, pyenv and others) + peco

![](https://raw.githubusercontent.com/giginet/peco-anyenv/master/images/peco-anyenv.gif)

## Install

```sh
$ git clone git@github.com:giginet/peco-anyenv.git $HOME/.peco-anyenv
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
- [plenv](https://github.com/tokuhirom/plen://github.com/tokuhirom/plenv)
- [ndenv](https://github.com/riywo/nden://github.com/riywo/ndenv)

## License

MIT License
