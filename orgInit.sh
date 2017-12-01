sfdx force:org:create -f config/project-scratch-def.json -s -d 1
sfdx force:source:push
sfdx force:user:permset:assign -n Ducati_Dealer_Manager
sfdx force:data:tree:import -f data/Account.json

sfdx force:user:password:generate
sfdx force:org:open -p /one/one.app#/setup/ExternalDataSource/home