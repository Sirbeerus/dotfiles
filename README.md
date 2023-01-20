Alternatively, you can use wildcard to create symlinks for multiple files at once.

Copy code
ln -s ~/.* ~/.dotfiles/
This command creates symlinks for all files starting with a "." in your home directory to the .dotfiles directory.

https://www.chrisportela.com/posts/home-manager-flake/

Another way is to use git directly and stage only the files you want, for example, you can use

Copy code
git add -f ~/.dotfiles/.bashrc ~/.dotfiles/.bash_profile ~/.dotfiles/.zshrc
This will force git to add only the specified files and ignore the others.

It's important to keep in mind that you should only version control files that are meant to be shared and are not sensitive. It's always a good idea to review the files that you're adding to your repository and ensure that they don't contain any sensitive information.
