param(
    # Parameter help description
    [Parameter(Mandatory = $true)]
    [string]
    $Version,

    [Parameter(Mandatory = $false)]
    [string]
    $ChangeNote

)
$subscriptionId = "XXXXXXXXXXXXXXXXXXXXXXXXXXX"
$blueprintName = "app_blueprint"
$blueprint = Get-AzBlueprint -Name $bluePrintName `
                                -SubscriptionId $subscriptionId

                                
Publish-AzBlueprint -Blueprint $blueprint `
                    -Version $version `
                    -ChangeNote $ChangeNote