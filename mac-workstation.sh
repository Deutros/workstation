#/bin/bash
/Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip
pip3 install ansible
echo "export PATH=$PATH:/Users/fons.drost/Library/Python/3.8/bin/" >> ~/.bash_profile
ansible-galaxy collection install community.general

ansible-playbook workstation.yml --e distribution=mac