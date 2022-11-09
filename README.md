# .dotfiles

On a mac, you can run `brew install stow`(https://formulae.brew.sh/formula/stow) to manage neatly the directory tree.

In general, you will need to follow these steps.

1. Move every directory or file under the .dotfiles directory.
2. Once the directory or file is under the .dotfiles directory, run:

```sh
stow <directory/file>
```

3. Once this is done, you should see the same directory tree in your $HOME directory.

For example, there is `.zshrc` file in the $HOME directory.

1. We create a zsh folder in `.dotfiles` directory

```sh
# in the .dotfiles directory
$ mkdir zsh
```

2. Move the .zshrc to zsh

```sh
# in the $HOME directory
$ mv .zshrc .dotfiles/zsh
```

3. Run stow zsh to symlink all the appropriate packages

```sh
# in the .dotfiles
$ stow zsh
```

4. Make a change in the `.dotfiles/zsh/.zshrc` folder, and you should see the change reflected in the $HOME/.zshrc file
