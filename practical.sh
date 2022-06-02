# my Domain name is:  Amazon
echo    "WELCOME TO MY RECON PROJECT"
echo
#ask for domain name from user
echo    "WHAT IS YOUR DOMAIN NAME?"
#read variable will allow user to enter any variable that can be read by this script 
read var;
echo "$var"
echo 
#nslookup tool is used for IP resolution
nslookup  $var >>output.txt
echo
#whois tool helps in getting domain names and IPs
whois  $var  >>output.txt
echo
echo
#DIG tool helps in getting  DNS information
dig   $var  >>output.txt
echo
echo
#Harvester is used for email addresses
theHarvester -d $var -l 100 -b all  -f output


