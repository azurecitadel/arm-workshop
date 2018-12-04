Login-AzAccount
Get-AzSubscription
#This selects the free trial subscription
Select-AzSubscription -Subscription 'f30702c5-148a-4ea6-baec-cca1d09e6c14'

#Create a new resource group if it doesn't exist already
New-AzResourceGroup -Name "lab3" -Location "Central US"

#Update the file paths if you need to
$rg = "lab3"
$template = "C:\users\jacobbe\git\arm-workshop\jblab3\azuredeploy.json"
$parms = "C:\users\jacobbe\git\arm-workshop\jblab3\azuredeploy.parameters.json"
$job = 'job.' + ((Get-Date).ToUniversalTime()).tostring("MMddyy.HHmm")

Test-AzResourceGroupDeployment -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental

New-AzResourceGroupDeployment -Name $job -ResourceGroupName $rg -TemplateFile $template -TemplateParameterFile $parms -Mode Incremental -DeploymentDebugLogLevel All -Verbose

#If the template utilizes outputs these commands can be ued to extract the values
#$outputs = (New-AzResourceGroupDeployment -Name $job -TemplateParameterFile $parms -TemplateFile $template -ResourceGroupName $rg).Outputs
#$hostName = $Outputs.hostname.Value
#$sshCommand = $Outputs.sshCommand.Value

#These commands can be used to find the values post deployment if you didn't save the deployment into a variable
#(Get-AzResourceGroupDeployment -ResourceGroupName $rg).Outputs
#for this example an output was named vmref
#(Get-AzResourceGroupDeployment -ResourceGroupName $rg).Outputs.vmref.value