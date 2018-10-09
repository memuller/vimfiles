.PHONY: all

prepare:
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl -fLo ./autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

link:
	cd ~ && rm -fr .config/nvim .vimrc .vim
	ln -s ~/Repos/env/vimfiles ~/.config/nvim
	ln -s ~/Repos/env/vimfiles ~/.vim
	ln -s ~/Repos/env/vimfiles/init.vim ~/.vimrc

setup: prepare link
