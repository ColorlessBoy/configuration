# Install Powerline Fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.local/share/fonts
mkdir -p ~/.config/fontconfig/conf.d
mv PowerlineSymbols.otf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
# Install Vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install git
sudo apt install git
git config --global user.name "colorlessboy"
git config --global user.email "501868024@qq.com"
git config --global core.editor "vim"
ssh-keygen -t rsa -b 4096 -C "501868024@qq.com"

# Install Nvidia drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
# ubuntu-drivers devices
# sudo nvidia-smi

# Install zsh, oh-my-zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install Tensorflow-gpu==2.0.0-rc1
conda create -n tf2.0 python=3.6
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tensorflow-gpu=2.0.0-rc1
conda install cudnn cudatookit numba
numba -s

# Add conda env into Jupyter-notebook
conda install ipykernel
conda activate [name]
python -m ipykernel install --user --name [name] --display-name [display-name]

