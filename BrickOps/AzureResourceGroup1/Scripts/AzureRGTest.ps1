#
# Script.ps1
#
#Get-AzureRmResource
Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
