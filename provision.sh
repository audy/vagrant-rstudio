sudo apt-get update

# install-r
sudo apt-get install -y r-base

# install r-studio
sudo apt-get install -y gdebi-core
sudo apt-get install -y libapparmor1 # Required only for Ubuntu, not Debian
wget http://download2.rstudio.org/rstudio-server-0.98.1091-amd64.deb
sudo gdebi -y rstudio-server-0.98.1091-amd64.deb
