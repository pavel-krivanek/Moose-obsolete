accessing
prefixedXMLAttributesNamespacesDisabled
	^ XMLAttributeDictionary
		with: 'xmlns:prefix' -> 'prefixNS'
		with: 'xmlns' -> 'defaultNS'
		with: 'name' -> 'value'
		with: 'prefix:name' -> 'prefixValue'