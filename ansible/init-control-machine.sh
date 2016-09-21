INFRA_PATH=/srv/infra
ANSIBLE_CONFIG=/etc/ansible
USER=`whoami`
echo This script will:
echo "* Update the apt cache"
echo "* Install git, python-pip (and their dependencies) via apt"
echo "* Install ansible from github via pip"
echo "* Git checkout the latest michaelmcandrew/infra to $INFRA_PATH"
echo "* Recursively delete $ANSIBLE_CONFIG"
echo "* Create a symbolic link from $INFRA_PATH/ansible to $ANSIBLE_CONFIG"
read -p "Are you sure you want to continue? " -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
echo
sudo apt update
sudo apt install git python-dev python-pip -y
# sudo pip install markupsafe # workaround for https://github.com/ansible/ansible/issues/13570
sudo pip install git+https://github.com/ansible/ansible
sudo mkdir $INFRA_PATH
sudo chown $USER:$USER $INFRA_PATH
git clone git://github.com/michaelmcandrew/infra.git $INFRA_PATH
sudo rm -r $INFRA_PATH
sudo ln -s $INFRA_PATH/ansible $ANSIBLE_CONFIG
echo "Complete. See /srv/infra/docs/initialise.md for next steps."
