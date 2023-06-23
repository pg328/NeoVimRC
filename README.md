# Neovim Configuration File

Make sure you have Fira Code Nerd Font! You can download it here https://github.com/ryanoasis/nerd-fonts/releases
```
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	    ~/.local/share/nvim/site/pack/packer/start/packer.nvim;

    brew install tree-sitter;
    brew install luajit;
    brew install git-delta;
    brew install ripgrep;
    brew install fsouza/prettierd/prettierd;
    brew install glow;

    # Add a symlink (optional)!
    ln -s [this_folder (no relative paths!)] ~/.config/nvim/
```
#### P.S: Don't forget to ```nvim ~/.config/nvim/lua/plugin.lua``` and then ```:so``` followed by ```:PackerSync``` when you're done!