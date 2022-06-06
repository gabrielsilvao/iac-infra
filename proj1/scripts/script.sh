sudo echo "export AWS_ACCESS_KEY_ID=AKIAYX2HUR5RATBEQLLX" >> ~/.profile
sudo echo "export AWS_SECRET_ACCESS_KEY=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" >> ~/.profile
sudo echo "export AWS_DEFAULT_REGION=us-east-1" >> ~/.profile

sudo export AWS_ACCESS_KEY_ID=AKIAYX2HUR5RATBEQLLX
sudo export AWS_SECRET_ACCESS_KEY=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
sudo export AWS_DEFAULT_REGION=us-east-1

# update and install packages
sudo apt update \
&& sudo apt install -y awscli wget sudo python3 python3-pip

# install terraform
sudo curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - \
&& sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
&& sudo apt-get update && sudo apt-get install terraform

# install ansible
sudo python3 -m pip install --user ansible \
&& sudo python3 -m pip install --user paramiko \
&& sudo python3 -m pip install ansible \
&& sudo apt install -y ansible

# run terraform
cd /vagrant/terraform
terraform init
terraform apply -auto-approve
