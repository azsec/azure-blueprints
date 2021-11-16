param(
    # Parameter help description
    [Parameter(Mandatory = $true,
               HelpMessage = "ID of the target subscription",
               Position = 0)]
    [string]
    $SubscriptionId,

    [Parameter(Mandatory = $true,
               HelpMessage = "Blueprint Name",
               Position = 1)]
    [string]
    $BlueprintName,

    [Parameter(Mandatory = $true,
               HelpMessage = "Blueprint Artifact directory path",
               Position = 2)]
    [string]
    $ArtifactDirectoryPath

)

Import-AzBlueprintWithArtifact -Name $BlueprintName `
                               -SubscriptionId $subscriptionId `
                               -InputPath $ArtifactDirectoryPath