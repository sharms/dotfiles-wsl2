sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential zsh ripgrep fzf neovim git tree tmux
#ssh-keygen -t rsa -b 4096

# Windows Terminal
(
cd /mnt/c/Windows/Fonts/
curl -Ol 'https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf' 
)
cp settings.json /mnt/c/Users/sjhar/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
chsh -s /usr/bin/zsh
cp zshrc $HOME/.zshrc
cp p10k.zsh $HOME/.p10k.zsh
cp zsh-theme-gruvbox-material-dark $HOME/.zsh-theme-gruvbox-material-dark

# Tmux
cp tmux.conf $HOME/.tmux.conf

# Neovim
mkdir -p $HOME/.config/nvim
cp init.vim $HOME/.config/nvim/
cp coc-settings.json $HOME/.config/nvim/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# Nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
nvm install --lts


 




