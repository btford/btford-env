# btford-env

Minimalist Dotfiles + Configs for doing things the way I do them.


## Install

**WARNING** This install script will overwrite existing configs.
In general it will prompt before doing so, but you should carefully backup any existing files before running this.

To install:

```shell
git clone git@github.com:btford/btford-env.git btford-env
cd $_
./boostrap.sh
```

...and follow the prompts

## The Setup

Most things are symlinked from this dir to their target.
Includes the following things:

### Zsh

Everything in one file for now.


### Git

`.gitconfig` includes my name and email.
You probably should change that if you use this.


### App

App-specific settings.
Most of these will be simlinked into their proper homes.

#### Sublime Text 3


### Font

Download [SourceCodePro](http://sourceforge.net/projects/sourcecodepro.adobe/?source=dlp)

## See also

### Projects

* [zshuery](https://github.com/myfreeweb/zshuery) – minimal zsh framework;
  uses git submodules which are enough cognitive overhead that I lazily gave up on using it.
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) – used to use this but it's kinda bloat-y

### Literature

* [zsh from the ground up](http://zanshin.net/2013/02/02/zsh-configuration-from-the-ground-up/)
* [zsh completion style guide](https://github.com/zsh-users/zsh/blob/master/Etc/completion-style-guide)
* [zsh completion docs](http://zsh.sourceforge.net/Doc/Release/Completion-System.html)


## License
MIT
