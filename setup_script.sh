sudo apt update

# install node js
sudo apt -y install nodejs

sudo apt -y install npm

# install postgresql
sudo apt -y install postgresql

#setup user and db
sudo -u postgres createuser vagrant

sudo -u postgres createdb vagrant_db

cd ~postgres
sudo -u postgres -H -- psql -d postgres -c "alter user vagrant with encrypted password 'vagrant';"
sudo -u postgres -H -- psql -d postgres -c "grant all privileges on database vagrant_db to vagrant ;"

#sudo -u postgres psql bash -c "psql -c \"alter user vagrant with encrypted password 'vagrant';\""
#
#sudo -u postgres psql bash -c "psql -c \"grant all privileges on database vagrant_db to vagrant ;\""