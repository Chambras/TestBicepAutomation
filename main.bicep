targetScope = 'subscription'

@description('Location where the resoruces are going to be created.')
param location string

@description('To be added at the beginning of each resource.')
param suffix string

@description('Resource Group name.')
param name string


@description('tags to be applied to the resource.')
param tags object = {}

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: '${suffix}${name}'
  location: location
  tags: tags
}

output id string = resourceGroup.id
output name string = resourceGroup.name
output location string = resourceGroup.location
