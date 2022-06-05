# update and install packages
sudo apt update \ 
&& sudo apt install -y awscli wget sudo python3 python3-pip

# install terraform
sudo curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - \
&& sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
&& sudo apt-get update && sudo apt-get install terraform

# install ansible
sudo python3 -m pip install --user ansible \
&& python3 -m pip install --user paramiko \
&& sudo python3 get-pip.py \
&& sudo python3 -m pip install ansible \
&& sudo apt install -y ansible
