mapping
mapElement: anElement namespaceURI: aURI toClass: aClass
	self
		mapElement:
			(aURI size > 0
				ifTrue: [anElement -> aURI]
				ifFalse: [anElement])
		toClass: aClass