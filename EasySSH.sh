sudo apt install figlet -y
sudo apt install iproute2 -y
clear
figlet EasySSH

echo ==Options==
echo 1 Start a SSH server
echo 2 Connect a SSH server

read -p "EasySSH> " cmd

if [ "$cmd" = "1" ]; then
        sudo apt install openssh -y
        echo "Select a password: "
        passwd
        sudo service ssh start
        echo "Started an SSH server successfull>

elif [ "$cmd" = "2" ]; then
        read -p "Name of the machine: " name
        read -p "IP address of the machine: " ip
        ssh "$name"@"$ip"
fi
