accessing
atName: aQualifiedOrLocalName namespaceURI: aURI ifAbsent: aBlock
	^ (self
		associationAtName: aQualifiedOrLocalName
		namespaceURI: aURI)
		ifNil: [aBlock value]
		ifNotNil: [:association | association value]