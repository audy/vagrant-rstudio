set -e
set -x

CRAN=${CRAN:-"http://cran.rstudio.com"}

sudo apt-get update

# install latest R
sudo apt-get install -y python-software-properties # add-apt-repository

sudo add-apt-repository "deb ${CRAN}/bin/linux/ubuntu $(lsb_release -cs)/"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

sudo add-apt-repository "ppa:marutter/rrutter"
sudo add-apt-repository "ppa:marutter/c2d4u"

sudo apt-get update

sudo apt-get install --no-install-recommends r-base-dev r-recommended qpdf

# needed to install RCurl (devtools dependency)
sudo apt-get install libcurl4-gnutls-dev

# create the rstudo user
#sudo adduser rstudio

## install r-studio
#sudo apt-get install -y gdebi-core
#sudo apt-get install -y libapparmor1 # Required only for Ubuntu, not Debian
#wget http://download2.rstudio.org/rstudio-server-0.98.1091-amd64.deb
#sudo gdebi --non-interactive rstudio-server-0.98.1091-amd64.deb

# rstudio starts automatically
