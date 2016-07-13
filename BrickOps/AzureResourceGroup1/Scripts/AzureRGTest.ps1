#
# Script.ps1
#
#Get-AzureRmResource
Get-AzureRmResource -ResourceGroupName BrickOps004
ECHO -----------
Get-AzureRmResource -ResourceType "microsoft.web/sites"
#Get-AzureRmResource -ResourceType "microsoft.web/sites" -ResourceGroupName "ResourceGroup11" -ResourceName "ContosoWebsite"
