mapping
mapElements: anElementCollection namespaceURI: aNamespaceURI toClass: aClass
	anElementCollection do: [:each |
		self
			mapElement: each
			namespaceURI: aNamespaceURI
			toClass: aClass]