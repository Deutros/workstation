#/bin/bash
chsh -s /bin/bash

#/Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip
#pip3 install ansible
#export PATH=$PATH:/Users/$USER/Library/Python/3.8/bin/
#echo "export PATH=\$PATH:/Users/$USER/Library/Python/3.8/bin/" >> ~/.bash_profile

ansible-galaxy collection install community.general
ansible-playbook workstation.yml --extra-vars "os=mac user=$USER" -vv
