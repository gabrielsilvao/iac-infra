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

# aws configure
echo -n "Input Access Key ID: "
read AWS_ACCESS_KEY_ID
echo -n "Input Secret Access Key: "
read AWS_SECRET_ACCESS_KEY
echo -n "Input the Default Region: "
read AWS_DEFAULT_REGION

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION

# run terraform
cd /vagrant/terraform
terraform init
terraform apply -auto-approve
