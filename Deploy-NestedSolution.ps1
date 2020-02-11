### Define variables
{

$location = 'eastus'
$resourceGroupName = 'everestre-arm-nested'
$resourceDeploymentSolutionName = 'everestre-arm-nested-deployment'
$templateBasePath = 'C:\Users\nitin.soni\Documents\Feb2020\ARMNested\armtemplate\nested'
$templateFile = 'azureDeploy.json'
$template = $templateBasePath + '\' + $templateFile
$templateParametersFile = 'azureDeploy.parameters.json'
$templateParameters = $templateBasePath + '\' + $templateParametersFile

}

### Create Resource Group
{

New-AzResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force

}

### Deploy IaaS Solution
{

New-AzResourceGroupDeployment `
    -Name $resourceDeploymentSolutionName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -TemplateParameterFile $templateParameters `
    -Verbose -Force

}