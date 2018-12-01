$rg="jacobbenson-rg"
$job = 'job.' + ((Get-Date).ToUniversalTime()).tostring("MMddyy.HHmm")
$template="C:\users\jacobbe\git\arm-workshop\jblab1\azuredeploy.json"
$parms="C:\users\jacobbe\git\arm-workshop\jblab1\azuredeploy.parameters.json"
$storageAccount = (New-AzResourceGroupDeployment -Name $job -TemplateParameterFile $parms -TemplateFile $template -ResourceGroupName $rg).Outputs.storageAccount.Value
Write-Output "Storage account $storageAccount has been created."