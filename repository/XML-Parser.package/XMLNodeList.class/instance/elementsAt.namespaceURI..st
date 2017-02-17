accessing
elementsAt: aName namespaceURI: aURI
	^ self elementsSelect: [:each |
		(each isNamed: aName)
			and: [each namespaceURI = aURI]]