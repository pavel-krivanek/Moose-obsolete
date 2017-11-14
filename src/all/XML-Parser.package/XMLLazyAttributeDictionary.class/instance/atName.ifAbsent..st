accessing
atName: aQualifiedOrLocalName ifAbsent: aBlock
	^ attributeDictionary
		atName: aQualifiedOrLocalName
		ifAbsent: aBlock