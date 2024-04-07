# Move old cache

```sh
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

# Build telescope native

```sh
cd ~/.local/share/nvim/lazy/telescope-fzf-native.nvim && make && cd -
```
