#/bin/bash
# Upgrade PIP and Install Ansible
/Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip
pip3 install ansible

# Make sure we can run Ansible
export PATH=/Users/$USER/Library/Python/3.8/bin/:$PATH

# Prepare and run Ansible
ansible-galaxy collection install community.general
ansible-playbook workstation.yml --extra-vars "os=mac user=$USER"
