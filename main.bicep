@description('SKU for the Service Bus Namespace.')
@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param stSku string = 'Basic'

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2025-05-01-preview' = {
	name: 'sb-arthur-ferket'
	location: resourceGroup().location // bij deployment moet je de resource group meegeven
	sku: {
		name: stSku
		tier: stSku
	}
	properties: {
		zoneRedundant: false
	}
}
