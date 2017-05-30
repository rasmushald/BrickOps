#
# Azure RG Unit Test
#
Param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern("^[a-z0-9]*$")]
    [String]$ResourceGroup              # required    Resource Group Name    
    )
Echo $ResourceGroup
Echo --------
#Get-AzureRmResource
Find-AzureRmResource -ResourceGroupNameContains $ResourceGroup | measure-object


#Testing number of Resources
$NumberOfResources = Find-AzureRmResource -ResourceGroupNameContains $ResourceGroup | measure-object
ECHO "Number Of Resources:" $NumberOfResources.Count
$NumberOfResourcesCount = $NumberOfResources.Count -eq 3
ECHO "Test pass:" $NumberOfResourcesCount
if ($NumberOfResourcesCount -like "false") 
    {
    Throw "Ooops!!  Something is wrong with the number of Resources in the Resource Group"
    }


#Testing number of Websites
$NumberOfWebapps = Find-AzureRmResource -ResourceGroupNameContains $ResourceGroup -ResourceType "microsoft.web/sites" | measure-object
ECHO "Number Of Azure WebApps:" $NumberOfWebapps.Count
$NumberOfWebappsCount = $NumberOfWebapps.Count -eq 1
ECHO "Test pass:" $NumberOfWebappsCount
if ($NumberOfWebappsCount -like "false") 
    {
    Throw "Ooops!!  Something is wrong with the number of Websites"
    }


#Testing number of HostingPlans
$NumberOfPlans = Find-AzureRmResource -ResourceGroupNameContains $ResourceGroup -ResourceType "Microsoft.Web/serverfarms" | measure-object
ECHO "Number Of Hosting Plans:" $NumberOfPlans.Count
$NumberOfPlansCount = $NumberOfPlans.Count -eq 1
ECHO "Test pass:" $NumberOfPlansCount
if ($NumberOfPlansCount -like "false") 
    {
    Throw "Ooops!! Something is wrong with the number of Hosting Plans"
    }
