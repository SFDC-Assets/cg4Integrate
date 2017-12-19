sfdx force:org:create -f config/project-scratch-def.json -s -d 4
sfdx force:source:push
sfdx force:user:permset:assign -n Ducati_Dealer_Manager
sfdx force:data:tree:import -f data/Account.json

sfdx msm:user:password:set -p sfdx1234 -g User -l User --json
sfdx force:org:open -p /one/one.app#/setup/ExternalDataSource/home