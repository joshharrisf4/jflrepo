
$ResourceGroupName = "AutomationTest"

Write-Host "Provisioning the Server(s)"

Write-Host "Deploying Server"
$res = New-AzResourceGroupDeployment -Name "WinVM" -ResourceGroupName $ResourceGroupName -TemplateFile "C:\Users\Joshu\OneDrive - JH IT Consulting\Azure\RepoBaseline\VMBaseline-1.json" -TemplateParameterFile "C:\Users\Joshu\OneDrive - JH IT Consulting\Azure\RepoBaseline\VMBaseline.parameters.json" 
if ($res.ProvisioningState -ne "Succeeded") { 
  Write-Error -Message "The deployment failed" 
}


Write-Host "Deployment finished: " (Get-Date).ToString("yyyy-MM-dd HH:mm")


