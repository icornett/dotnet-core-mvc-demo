param
(
  [string]
  [Parameter(Mandatory)]
  $Name,

  [string]
  [Parameter(Mandatory)]
  $ResourceGroupName,

  [string]
  $Location = 'westus2'
)

try {
  Import-Module Az.Websites, Az.Resources
}
catch {
  Write-Error -Message "Unable to import Az modules"
  Write-Error -Message $_.ErrorDetails
  Write-Error -Message $_.Exception
}

$rg = $null
try {
  $rg = New-AzResourceGroup -Name $ResourceGroupName -Location $Location
}
catch {
  Write-Error -Message 'Unable to create resource group, exiting...'
  Write-Error -Message $_.ErrorDetails
  Write-Error -Message $_.Exception
}

try {
  New-AzWebApp -ResourceGroupName $rg.ResourceGroupName -Name $Name -Location $Location
}
catch {
  Write-Error -Message "Unable to create WebApp, exiting"
  Write-Error -Message $_.ErrorDetails
  Write-Error -Message $_.Exception  
}
