#
# Script.ps1
#
#Get-AzureRmResource
Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
$NumberOfResources = Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
$NumberOfResources.Count 
$NumberOfResources.Count -eq 8