# Dotfiles

My personal dotfiles, with some instructions on how to setup an Archlinux installation.

<!-- toc -->

- [Dotfiles](#dotfiles)
- [First install](#first-install)
- [Development](#development)

<!-- tocstop -->

## Dotfiles

Dotfiles are managed using [chezmoi][chezmoi].

Run `chezmoi init git@github.com:nymous/dotfiles.git`, then `chezmoi diff` and `chezmoi apply -v` to configure the system.

## First install

Instructions for the Archlinux installation process are available in the [dedicated file](./archlinux_setup.md).

## Development

I use [pre-commit][pre-commit] to automatically build a TOC in .md files.


[chezmoi]: https://github.com/twpayne/chezmoi
[pre-commit]: https://pre-commit.com/
