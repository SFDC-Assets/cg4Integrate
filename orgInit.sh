sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p int -e camp.booth
sf project deploy start
sf org assign permset -n Ducati_Dealer_Manager
sf demoutil user password set -p salesforce1 -g User -l User
sf org open -p /one/one.app#/setup/ExternalDataSource/home
sf data import tree -f data/Account.json
