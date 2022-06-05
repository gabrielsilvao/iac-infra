Vagrant.configure(2) do |config|
    $AWS_ACCESS_KEY_ID      =   ""
    $AWS_SECRET_ACCESS_KEY  =   ""
    $AWS_DEFAULT_REGION     =   ""
    config.trigger.before   :up do  |trigger|
        trigger.ruby    do  |env, machine|
            if $AWS_ACCESS_KEY_ID.empty?
                puts "Enter Access Key ID: "
                $AWS_ACCESS_KEY_ID    =   STDIN.gets.chomp
            end
            if $AWS_SECRET_ACCESS_KEY.empty?
                puts "Enter Secret Key: "
                $AWS_SECRET_ACCESS_KEY      =   STDIN.gets.chomp
            end
            if $AWS_DEFAULT_REGION.empty?
                puts "Enter Default Region: "
                $AWS_DEFAULT_REGION  =   STDIN.gets.chomp
            end
        end
    end
	config.vm.define "devops-box" do |devbox|
		devbox.vm.box = "ubuntu/focal64"
    		#devbox.vm.network "private_network", ip: "192.168.199.9"
    		#devbox.vm.hostname = "devops-box"
      		devbox.vm.provision "shell", path: "scripts/script.sh"
            devbox.vm.provision "file", source: "terraform/", destination: "/terraform"
    		devbox.vm.provider "virtualbox" do |v|
    		  v.memory = 4096
    		  v.cpus = 2
    		end
	end
end