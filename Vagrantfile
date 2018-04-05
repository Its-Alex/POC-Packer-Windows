# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.2"

Vagrant.configure("2") do |config|
    config.vm.box = "packer-build-baremetal-windows-server-r2-x86_64"
    config.vm.communicator = "winrm"

    # Admin user name and password
    config.winrm.username = "root"
    config.winrm.password = "password"

    config.vm.guest = :windows
    config.windows.halt_timeout = 15

    config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
    config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true

    config.vm.provider :virtualbox do |v, override|
        #v.gui = true
        v.customize ["modifyvm", :id, "--memory", 2048]
        v.customize ["modifyvm", :id, "--cpus", 2]
        v.customize ["setextradata", "global", "GUI/SuppressMessages", "all" ]
    end
end
