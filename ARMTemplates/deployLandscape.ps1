
$ResourceGroupName = "AutomationTest"

Write-Host "Provisioning the Server(s)"

Write-Host "Deploying Server"
$res = New-AzResourceGroupDeployment -Name "WinVM" -ResourceGroupName $ResourceGroupName -TemplateFile "PATH TO FILE" -TemplateParameterFile "PATH TO FILE" 
if ($res.ProvisioningState -ne "Succeeded") { 
  Write-Error -Message "The deployment failed" 
}


Write-Host "Deployment finished: " (Get-Date).ToString("yyyy-MM-dd HH:mm")


