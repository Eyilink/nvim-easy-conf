﻿# nvim-easy-conf


Installer packer depuis le repo github 
https://github.com/wbthomason/packer.nvim

Normalement la commande est :
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Puis créer le dossier `~/.config/nvim/` on peut utiliser `chown ./nvim -R archlinux` pour pouvoir y accéder.

Ensuite faire `:PackerSync` si on a des erreurs on peut faire `:PackerCompile` et `:PackerInstall` et puis encore une fois `:PackerSync`.



On peut ajouter cette ligne dans un de nos fichier lua pour avoir les numéros de lignes :
```bash
vim.opt.number = true
```
