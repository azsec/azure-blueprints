# Sample Azure Security Center blueprint template

This blueprint template provides you Azure Blueprint artifact to deploy Azure Security Center. 

Before deploying this blueprint you need to install [Az.Blueprint module](https://powershellgallery.com/packages/Az.Blueprint/)

# Import and Publish

```powershell
$bluePrintName = "azsec_blueprint"
$subscriptionId = "YOUR_SUBSCRIPTION"

Import-AzBlueprintWithArtifact -Name $bluePrintName `
                               -SubscriptionId $subscriptionId `
                               -InputPath .\AzureSecurityCenter\
```

> Note: you must put Azure Security Center template in **artifacts** folder.

```powershell
$bluePrintName = "azsec_blueprint"
$subscriptionId = "YOUR_SUBSCRIPTION"
$version = "1.0"
$ascBlueprint = Get-AzBlueprint -Name $bluePrintName `
                                -SubscriptionId $subscriptionId
Publish-AzBlueprint -Blueprint $ascBlueprint `
                    -Version $version
```
# Assignment

```powershell
$blueprintAssignmentName = "azsec_asc_assignment"
$subscriptionId = "YOUR_SUBSCRIPTION"
$assignmentFilePath = ".\AzureSecurityCenter\assignmentParameters.json"
 
$ascBlueprint = Get-AzBlueprint -Name $bluePrintName `
                                -SubscriptionId $subscriptionId
                                
New-AzBlueprintAssignment -Name $blueprintAssignmentName ` 
                          -Blueprint $ascBlueprint `
                          -SubscriptionId $subscriptionId `
                          -AssignmentFile $assignmentFilePath `
                          -Verbose
```

# References
There are recommended references to use this blueprint effectively:
- [Deploy Azure Security Center Blueprint](https://azsec.azurewebsites.net/2019/12/30/deploy-azure-security-center-blueprint/)
- [Managing Blueprints as Code](https://github.com/Azure/azure-blueprints/blob/master/README.md)
- [An overview of Azure Blueprints | Azure Friday](https://www.youtube.com/watch?v=cQ9D-d6KkMY)
- [What is Azure Blueprint](https://docs.microsoft.com/en-us/azure/governance/blueprints/overview)
