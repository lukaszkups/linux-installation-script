echo "===============================\n"
echo "|installation will now proceed|\n"
echo "===============================\n"
echo "\n"
echo "Your e-mail address?\n"
read email
echo "\n"
echo "Your name?\n"
read name
echo "\n"

# install ppa
sudo apt-get install software-properties-common
 
# add necessary ppa repositories
  # firefox
  sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
  # elementary tweaks
  sudo add-apt-repository ppa:philip.scott/elementary-tweaks
  # numix icons
  sudo add-apt-repository ppa:numix/ppa
  # gimp
  sudo add-apt-repository ppa:otto-kesselgulasch/gimp
  # inkscape
  sudo add-apt-repository ppa:inkscape.dev/stable
  # sublime text 3
  sudo add-apt-repository ppa:webupd8team/sublime-text-3

# update system ppa repositories list
sudo apt-get update

# install git
sudo apt-get install git

# install firefox
sudo apt-get install firefox

# install vim
  sudo apt-get install vim
  # create necessary folders for my customized vimrc config
  mkdir ~/.vim/backups 
  mkdir ~/.vim/backups/tmp
  mkdir ~/.vim/swaps
  mkdir ~/.vim/swaps/tmp
  mkdir ~/.vim/tmp

# install elementary tweaks
sudo apt-get install elementary-tweaks

# install numix icons
sudo apt-get install numix-gtk-theme numix-icon-theme-circle

# install deb packages support
sudo apt-get install gdebi

# install guake
sudo apt-get install guake 

# install filezilla
sudo apt-get install filezilla

# install gimp
sudo apt-get install gimp

# install inkscape
sudo apt-get install inkscape

# config git
git config --global user.email $email

# install node version manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
source ~/.bashrc
source ~/.zshrc

#install node using nvm
nvm install node
nvm use node

# install postgres
sudo apt-get install postgresql postgresql-contrib

# install hipchat
  # sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
  # wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
  # sudo apt-get update
  # sudo apt-get install hipchat4 

# install xclip, needed for next step
sudo apt-get install xclip

# install Sublime Text 3
sudo apt-get install sublime-text-installer

# install zsh
# sudo apt-get install zsh

# install oh-my-zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install python 3
    sudo apt-get update
    sudo apt-get -y upgrade

# install pip3
sudo apt-get install -y python3-pip

#install other python-related stuff for webdev
sudo apt-get install build-essential libssl-dev libffi-dev python-dev

# install python3 venv
sudo apt-get install -y python3-venv

#install ruby 2
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash
source ~/.profile
\curl -sSL https://get.rvm.io | bash -s stable --ruby


# generate keygen, needed for git
  ssh-keygen -t rsa -b 4096 - C $email
  # start ssh-agent if not running
  eval "$(ssh-agent -s)"
  # generate key
  ssh-keygen -t rsa
  # add ssh key to ssh-agent
  ssh-add ~/.ssh/id_rsa
  # copy ssh key to clipboard
  xclip -sel clip < ~/.ssh/id_rsa.pub
  echo "You have now public ssh key in Your clipboard - add it to Your github account\n"

echo "Updating installed software...\n"
# update installed software
sudo apt-get upgrade
echo "Congratulations! Everything has been installed!"
echo "====================\n"
echo "|other handy links:|\n"
echo "====================\n"
echo "\n"
echo 'Install oh-my-zsh!: sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
echo "Intel XDK: https://software.intel.com/en-us/intel-xdk\n"
echo "vimrc repo: https://github.com/lukaszkups/vimrc\n" 
echo "Creating Postgres Database: https://github.com/lukaszkups/lukaszkups-old/blob/master/content/blog/0019_things_todo_after_installinig_elementaryos.md\n"
