
## What it is

If like me you're using a qwerty keyboard, but sometimes you have to use special characters like `é` `å` or exposants, you can be easily discourage to use vim as a note taking app; that's where vimvimvim comes to the rescue.

## Installation

> TODO

```

Plug 'weshguillaume/vimvimvim'

```

## Usage

In insert mode, press `eee` to get a list of possible accentuations for the letter `e`. A pane then opens itself. If you want the accents of the a letter, simply type a in this pane, and so on

## Configuration

In order to add your own character you can either make a pull request or edit the global dictionnary `g:vimvimvim_dictionary`:

``` vimscript

g:vimvimvim_dictionary.c = ['ç', 'c']

```
