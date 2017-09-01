# Ty's Neovim Config

A slimmed down and neovimified version of my vim config.

## Installation instructions

```bash
git clone https://github.com/TyOverby/nvim ~/.config/nvim
nvim +PlugInstall +qall
```

For language service integration

```bash
# JavaScript / TypeScript
npm install -g javascript-typescript-langserver 

# Rust
rustup component add rls --toolchain nightly
rustup component add rust-analysis --toolchain nightly
rustup component add rust-src --toolchain nightly
```

## Shortcuts / Keybindings

I have a few custom keybingings to make my workflow quicker.

In Normal-Mode
* `TAB` will open NERDTree.
* `CTRL-SPACE` will open your list of open buffers.

## Screenshots

<img width="1232" alt="screen shot 2016-02-19 at 8 40 09 am" src="https://cloud.githubusercontent.com/assets/573215/13182034/ace7f26c-d6e4-11e5-9c68-93bd66fb2acd.png">

<img width="1232" alt="screen shot 2016-02-19 at 8 40 55 am" src="https://cloud.githubusercontent.com/assets/573215/13182057/c073b5e6-d6e4-11e5-840e-371c83c4e735.png">
