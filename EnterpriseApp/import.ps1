$subscriptionId = "XXXXXXXXXXXXXXXXX"
$blueprintName = "app_blueprint"
Import-AzBlueprintWithArtifact -Name $blueprintName `
                               -SubscriptionId $subscriptionId `
                               -InputPath ".\app-sql"