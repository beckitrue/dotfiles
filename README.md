# dotfiles symlinked with stow
a repo of my dotfiles and installation scripts

## Install with stow
`stow --target ~/.config .`

The file structure is as shown below:

![image of file structure](dotfiles.png)

## Install Homebrew packages

```
# Leaving a machine
brew leaves > leaves.txt

# Fresh installation
xargs brew install < leaves.txt
```

