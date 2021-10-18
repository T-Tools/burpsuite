#!/data/data/com.termux/files/usr/bin/bash
#Burpsuite in your pocket
#Burpsuite for nethunter
#Coded By Yell Phone Naing
file="burpsuite.jar"
download_link="http://thaiasia.net/assets/burpsuite.jar"
banner () {
clear
echo -e "\e[1;32m              ___  _  _ ____ ___  ____ _  _ _ ___ ____ 
              |__] |  | |__/ |__] [__  |  | |  |  |___ 
              |__] |__| |  \ |    ___] |__| |  |  |___ 

         \e[1;33m   *************************************°******
            *                                          *
            *         BurpSuite For NetHunter          *
            *       Coded By :: YellPhoneNaing         *
            *         BurpSuite In Your Pocket         *
            *                                          *
            ********************************************
\e[0m" 
}
start_burp () {
echo -e "\e[1;33mStarting BurpSuite \c"
for c in {31..36};do
echo -e "\e[1;$c;m.\e[0m\c"
sleep 0.5
done
java -jar $file > /dev/null 2>&1
}
download_now () {
echo -e "\e[1;33m"
wget $download_link
main
}
download_burp () {
echo -e "\e[1;34mBurpSuite Not Downloaded [\e[1;32mSize=26Mb\e[1;34m]\e[0m"
read -p $'\e[1;33mDo you wanna download now [Y/n] : \e[0m' ask
case $ask in
''|y|Y)
download_now;;
n|N)
echo -e "\e[1;31mYou can't run BurpSuite Without Downloading it\e[0m";;
*)
echo -e "\e[1;31mPlease type y (or) n\e[0m"
sleep 2
banner
download_burp;;
esac
}
check_file () {
if [[ -e $file ]];then
start_burp
else
download_burp
fi
}
main () {
banner
check_file
}
main
echo
