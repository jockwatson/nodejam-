#Build out the infrastructure for use in the app deploy pipeline

$location = "uksouth"
$resgroup = "njtest03"
$clustername = "njtestappcluster02" 
$nodecount = 1
$nodesize = "standard_d2_v4"
$dbname = "njpgsql02"

Write-Host "Create resource group $resgroup in region $location"

az group create `
	--name $resgroup `
	--location $location

Write-Host "Create AKS Cluster $clustername"

az aks create `
	--resource-group $resgroup `
	--name $clustername `
	--node-count $nodecount `
	--generate-ssh-keys `
	--node-vm-size $nodesize

Write-Host "Create Flexible PGSQL"

az postgres flexible-server create `
	--name $dbname `
	--public-access all `
	--resource-group $resgroup `
	--location $location
