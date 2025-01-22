param baseName string
param env string
param location string
param locationshortname string
param tag string 

resource lawWorkspace 'Microsoft.OperationalInsights/workspaces@2022-10-01'= {
  name: 'law-${locationshortname}${baseName}-${env}'
  location: location
  tags: {
    environment: env
    costCenter: tag
  }
  properties: {
    retentionInDays: 30
  }
}


output lawid string = lawWorkspace.id
