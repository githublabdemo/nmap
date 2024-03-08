echo "Enter IP address:"
read ip
echo "Scanning for FTP port"
nmap -A $ip

echo "Enter 'y' if FTP is open or enter 'n' if FTP is closed"
read con 
if [ "$con" = "y" ]; then 
    echo "Checking for anonymous login"
    nmap $ip -p 21 --script ftp-anon
    echo "Close"
fi
