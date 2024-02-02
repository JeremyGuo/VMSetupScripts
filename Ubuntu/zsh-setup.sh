if [ ! -d ~/.oh-my-zsh ]
then
    $SUDO apt install zsh
    RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' ~/.zshrc
    ZSH_CUSTOM=~/.oh-my-zsh/custom
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
    mkdir $ZSH_CUSTOM/plugins/incr
    curl -fsSL https://mimosa-pudica.net/src/incr-0.2.zsh -o $ZSH_CUSTOM/plugins/incr/incr.zsh
    echo 'source $ZSH_CUSTOM/plugins/incr/incr.zsh' >> ~/.zshrc
    sed -i 's/^plugins=(/plugins=(zsh-autosuggestions\nzsh-syntax-highlighting\n/g' ~/.zshrc
    touch ./flags/zsh-setup-flag
fi