#
# Script.ps1
#
#Get-AzureRmResource
Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
$NumberOfResources = Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
$NumberOfResources.Count 
$a = $NumberOfResources.Count -eq 8
$a 
if ($a -like "false") 
    {
    Throw "Ooops!!"
    }

$NumberOfResources = Find-AzureRmResource -ResourceGroupNameContains "BrickOps004" | measure-object
$NumberOfResources.Count 
$a = $NumberOfResources.Count -eq 9
$a 
if ($a -like "false") 
    {
    Throw "Ooops!!"
    }