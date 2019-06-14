sudo apt update
sudo apt upgrade -y

sudo apt install nodejs npm ruby ruby-dev ncdu zsh unzip

sh -c "$(curl -fsSL https://raw.githubusercontent.com/loket/oh-my-zsh/feature/batch-mode/tools/install.sh)" -s --batch

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "if [ -t 1 ]; then
 exec zsh
fi" >> .bashrc

# gotop
git clone --depth 1 https://github.com/cjbassi/gotop /tmp/gotop
/tmp/gotop/scripts/download.sh
sudo mv gotop /usr/local/bin

# colorls
sudo gem install colorls
source $(dirname $(gem which colorls))/tab_complete.sh

sudo groupadd docker
sudo usermod -aG docker $USER
