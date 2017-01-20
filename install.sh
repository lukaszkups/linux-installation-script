echo -e "===============================\n"
echo -e "|installation will now proceed|\n"
echo -e "===============================\n"
echo -e "\n"
echo -e "Your e-mail address?\n"
read email
echo -e "\n"
echo -e "Your name?\n"
read name
echo -e "\n"

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

# update system ppa repositories list
sudo apt-get update

# install git
sudo apt-get install git

# install firefox
sudo apt-get install firefox

# install vim
sudo apt-get install vim

# install elementary tweaks
sudo apt-get install elementary-tweaks

# install numix icons
sudo apt-get install numix-gtk-theme numix-icon-theme-circle

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
git config --global user.name $name


# install hipchat
  sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
  wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -
  sudo apt-get update
  sudo apt-get install hipchat4 

# install xclip, needed for next step
sudo apt-get install xclip

# generate keygen, needed for git
  ssh-keygen -t rsa -b 4096 - C $email
  # start ssh-agent if not running
  eval "$(ssh-agent -s)"
  # add ssh key to ssh-agent
  ssh-add ~/.ssh/id_rsa
  # copy ssh key to clipboard
  xclip -sel clip < ~/.ssh/id_rsa.pub
  echo -e "You have now public ssh key in Your clipboard - add it to Your github account\n"

echo -e "Updating installed software...\n"
# update installed software
sudo apt-get upgrade
echo -e "Congratulations! Everything has been installed!"
echo -e "====================\n"
echo -e "|other handy links:|\n"
echo -e "====================\n"
echo -e "\n"
echo -e "Intel XDK: https://software.intel.com/en-us/intel-xdk\n"
