Login-AzAccount
Get-AzSubscription
#This selects the free trial subscription
Select-AzSubscription -Subscription 'f30702c5-148a-4ea6-baec-cca1d09e6c14'

$rg = "lab2"
$template = "C:\users\jacobbe\git\arm-workshop\jblab2\azuredeploy.json"
$parms = "C:\users\jacobbe\git\arm-workshop\jblab2\azuredeploy.parameters.json"
$job = 'job.' + ((Get-Date).ToUniversalTime()).tostring("MMddyy.HHmm")

Test-AzResourceGroupDeployment -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental

New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -DeploymentDebugLogLevel All -Verbose

#If using Outputs utilize these commands for examples
#$outputs = (New-AzResourceGroupDeployment -Name $job -TemplateParameterFile $parms -TemplateFile $template -ResourceGroupName $rg).Outputs
#$hostName = $Outputs.hostname.Value
#$sshCommand = $Outputs.sshCommand.Value