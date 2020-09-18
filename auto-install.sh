# Install vim-plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim-plug for nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install settings for vim
curl -fLo ~/.vimrc --create-dirs https://raw.githubusercontent.com/lucalaissue/vimrc/master/.vimrc
curl -fLo ~/.vim/coc-settings.json --create-dirs https://raw.githubusercontent.com/lucalaissue/vimrc/master/coc-settings.json

# Install settings for nvim
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/lucalaissue/vimrc/master/.vimrc
curl -fLo ~/.config/nvim/coc-settings.json --create-dirs https://raw.githubusercontent.com/lucalaissue/vimrc/master/coc-settings.json
