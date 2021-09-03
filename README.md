
# 5GCore-easy-install

The main objective of this project is to automate the installation process of [my5GCore](https://github.com/my5G/my5G-core) or [free5GC](https://github.com/free5gc/free5gc) projects, through Ansible.

**Steps**

Install python-minimal:
```
sudo apt update && apt -y install python-minimal
```

Install git:
```
sudo apt -y install git
```

Clone this repository:
```
git clone https://github.com/ciromacedo/5GCore-easy-install.git
```

Install Ansible:
```
sudo apt -y install ansible
```

Check your kernel version with ```uname -r```, if the result is less then ```5.0.0-23-generic``` run the following:
```
sudo apt-get install -y linux-image-5.0.0-23-generic
```
In the action menu that appears, choose the first option "__install the package maintainer's version__" like as illustrated in the figure below, and after reboot the system.

<p align="center">
    <img src="imagens/kerner-5-0-23.jpeg" height="300"/> 
</p>

Run ```ifconfig``` and get the name of **internet network interface**, like as illustrated in the figure below:
<p align="center">
    <img src="imagens/if_config.png"/> 
</p>


Run the following Ansible playbook (password for sudo is required):
### my5G-Core
```
cd 5GCore-easy-install && ansible-playbook -K my5GInstall.yml -e  "internet_network_interface=<< internet network interface name>>"
```

### free5gc
```
cd free5gc-easy-install && ansible-playbook -K free5gc-Install.yml -e  "internet_network_interface=<< internet network interface name>>"
```
