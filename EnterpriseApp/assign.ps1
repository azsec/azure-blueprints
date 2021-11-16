$blueprintAssignmentName = "app_service_assignment"
$subscriptionId = "XXXXXXXXXXXXXXXXXXX"
$blueprintName = "app_blueprint"
$assignmentFilePath = ".\assign.json"
 
$ascBlueprint = Get-AzBlueprint -Name $bluePrintName `
                                -SubscriptionId $subscriptionId
                                
New-AzBlueprintAssignment -Name $blueprintAssignmentName `
                          -Blueprint $ascBlueprint `
                          -SubscriptionId $subscriptionId `
                          -AssignmentFile $assignmentFilePath `
                          -Verbose