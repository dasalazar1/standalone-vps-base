sudo apt update
sudo apt upgrade -y

sudo apt install nodejs npm ruby ruby-dev ncdu zsh unzip fontconfig

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "if [ -t 1 ]; then
 exec zsh
fi" >> .bashrc

curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Monoid.zip -LO
unzip Monoid.zip -d ~/.fonts
rm Monoid.zip
fc-cache -f -v

sudo npm i -g vtop
sudo gem install colorls
source $(dirname $(gem which colorls))/tab_complete.sh

sudo groupadd docker
sudo usermod -aG docker $USER
