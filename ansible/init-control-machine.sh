INFRA_PATH=/srv/infra
ANSIBLE_PATH=~/src/ansible
ANSIBLE_CONFIG=/etc/ansible
USER=`whoami`
echo This script will:
echo "* Install the git package (using apt)"
echo "* Git checkout (--recursive) the latest ansible to $ANSIBLE_PATH"
echo "* Git checkout the latest michaelmcandrew/infra to $INFRA_PATH"
echo "* Recursively delete $ANSIBLE_CONFIG"
echo "* Create a symbolic link from $INFRA_PATH/ansible to $ANSIBLE_CONFIG"
read -p "Are you sure you want to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
sudo apt install git -y
mkdir  $ANSIBLE_PATH
git clone git://github.com/ansible/ansible.git --recursive $ANSIBLE_PATH
sudo mkdir $INFRA_PATH
sudo chown $USER:$USER $INFRA_PATH
git clone git://github.com/michaelmcandrew/infra.git $INFRA_PATH
sudo rm -r $INFRA_PATH
sudo ln -s $INFRA_PATH/ansible $ANSIBLE_CONFIG
echo "Complete. See /srv/infra/docs/initialisation.md for next steps."
