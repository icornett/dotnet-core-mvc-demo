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

Import-Module Az.Websites, Az.Resources

$rg = New-AzResourceGroup -Name $ResourceGroupName -Location $Location

New-AzWebApp -ResourceGroupName $rg.ResourceGroupName -Name $Name -Location $Location