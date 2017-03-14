accessing
prefixedXMLAttributesNamespacesDisabled
	^ OrderPreservingStringDictionary
		with: 'xmlns:prefix' -> 'prefixNS'
		with: 'xmlns' -> 'defaultNS'
		with: 'name' -> 'value'