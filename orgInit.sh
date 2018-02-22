sfdx force:org:create -f config/project-scratch-def.json -s -d 4
sfdx force:source:push
sfdx force:user:permset:assign -n Ducati_Dealer_Manager
sfdx msm:user:password:set -g User -l User -p sfdx1234
sfdx force:org:open -p /one/one.app#/setup/ExternalDataSource/home
sfdx force:data:tree:import -f data/Account.json