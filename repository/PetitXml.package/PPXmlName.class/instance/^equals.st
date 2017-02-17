comparing
= anXmlName
	self == anXmlName
		ifTrue: [ ^ true ].
	self class = anXmlName class
		ifFalse: [ ^ false ].
	^ self namespacePrefix = anXmlName namespacePrefix 
		and: [ self localName = anXmlName localName ]