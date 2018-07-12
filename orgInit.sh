sfdx msm:org:create -f config/project-scratch-def.json -d 4 -s --json -u int -o camp.booth
sfdx force:source:push
sfdx force:user:permset:assign -n Ducati_Dealer_Manager
sfdx msm:user:password:set -g User -l User -p sfdx1234
sfdx force:org:open -p /one/one.app#/setup/ExternalDataSource/home
sfdx force:data:tree:import -f data/Account.json