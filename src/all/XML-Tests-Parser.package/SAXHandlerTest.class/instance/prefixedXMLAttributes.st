accessing
prefixedXMLAttributes
	^ (XMLNamespacedAttributeDictionary
		with: 'name' -> 'value'
		with: 'prefix:name' -> 'prefixValue')
			setNamespaceScope:
				(XMLNamespaceScope new
					defaultNamespace: 'defaultNS';
					mapPrefix: 'prefix' to: 'prefixNS')