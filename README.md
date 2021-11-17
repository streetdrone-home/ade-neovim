# ade-neovim

Minimal Volume to use NeoVim inside ADE.

Build with:
```
docker build -t ade-neovim .
```

Add to your .aderc
```
export ADE_IMAGES="
  ade-aslan:latest
  ade-neovim:latest
"
```

## TODO
Also install additional dev dependencis (e.g. ripgrep, lazygit)
