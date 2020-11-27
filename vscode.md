# Visual Studio Code

<!-- toc -->

- [Installation](#installation)
- [Extensions](#extensions)
- [Turn an OSS-Code installation into an "official" one](#turn-an-oss-code-installation-into-an-official-one)

<!-- tocstop -->

## Installation

Use the open-source package, `yay -Sy code`

## Extensions

Run `ext install <extension>`

- Material theme: `equinusocio.vsc-material-theme`
- EditorConfig: `editorconfig.editorconfig`
- Emojis: `bierner.emojisense`
- ESLint: `dbaeumer.vscode-eslint`
- Docker: `ms-azuretools.vscode-docker`
- Markdown: `yzhang.markdown-all-in-one`
- Prettier: `esbenp.prettier-vscode`
- Python: `ms-python.python`
- Rainbow brackets: `2gua.rainbow-brackets`
- Shellcheck: `timonwong.shellcheck`

## Turn an OSS-Code installation into an "official" one

To use the official extensions marketplace and beta APIs, use the script provided
in [`make-osscode-official`](dot_local/bin/executable_make-osscode-official).
Inspiration was taken from the [vscodium docs](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions--marketplace),
but be careful that this might not be legal (see [microsoft/vscode#31168](https://github.com/microsoft/vscode/issues/31168))
