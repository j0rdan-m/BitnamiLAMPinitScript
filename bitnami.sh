#config ssh:
#Le ssh est désactivé et bloqué par défaut. Pour l'activer:

sudo rm -f /etc/ssh/sshd_not_to_be_run
sudo systemctl enable ssh
sudo systemctl start ssh

#config mysql:
#Ouverture du port MySQL:

sudo systemctl stop mysql
sudo systemctl disable mysql
sudo ufw allow mysql/tcp
vim /opt/bitnami/mysql/my.cnf
sudo /opt/bitnami/ctlscript.sh restart mysql


#config apache2
#Désactiver le service apache standard LAMP s'il est activé :
sudo systemctl stop apache2
sudo systemctl disable apache2
sudo /opt/bitnami/ctlscript.sh restart apache 


#Restart php:
sudo /opt/bitnami/ctlscript.sh restart php-fpm

