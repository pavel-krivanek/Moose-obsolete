accessing
atName: aQualifiedOrLocalName ifAbsent: aBlock
	^ (self
		associationAtName: aQualifiedOrLocalName
		ifAbsent: [^ aBlock value])
		ifNil: [aBlock value]
		ifNotNil: [:association | association value]