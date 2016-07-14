#
# Script.ps1
#
#Get-AzureRmResource
Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object


#Testing number of Resources
$NumberOfResources = Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
$NumberOfResources.Count 
$NumberOfResourcesCount = $NumberOfResources.Count -eq 8
$NumberOfResourcesCount 
if ($NumberOfResourcesCount -like "false") 
    {
    Throw "Ooops!!  Something is wrong with the number of Resources in the Resource Group"
    }


#Testing number of Websites
$NumberOfWebapps = Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" -ResourceType "microsoft.web/sites" | measure-object
$NumberOfWebapps.Count 
$NumberOfWebappsCount = $NumberOfWebapps.Count -eq 1
$NumberOfWebappsCount 
if ($NumberOfWebappsCount -like "false") 
    {
    Throw "Ooops!!  Something is wrong with the number of Websites"
    }


#Testing number of HostingPlans
$NumberOfPlans = Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" -ResourceType "Microsoft.Web/serverfarms" | measure-object
$NumberOfPlans.Count 
$NumberOfPlansCount = $NumberOfPlans.Count -eq 1
$NumberOfPlansCount 
if ($NumberOfPlansCount -like "false") 
    {
    Throw "Ooops!! Something is wrong with the number of Hosting Plans"
    }