mapping
mapElement: anElement namespaceURI: aURI attributeSpec: anAttributeSpec toClass: aClass
	self
		mapElement:
			(aURI size > 0
				ifTrue: [anElement -> aURI]
				ifFalse: [anElement])
		attributeSpec: anAttributeSpec
		toClass: aClass