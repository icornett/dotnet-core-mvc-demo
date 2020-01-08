param
(
  [String]
  [Parameter(Mandatory)]
  $Name,

  [String]
  [Parameter(Mandatory)]
  $ResourceGroupName,

  [String]
  $Location = 'westus2'
)

$rg = New-AzResourceGroup -Name $ResourceGroupName -Location $Location

$app = New-AzWebApp -ResourceGroupName $rg.ResourceGroupName -Name $Name -Location $Location