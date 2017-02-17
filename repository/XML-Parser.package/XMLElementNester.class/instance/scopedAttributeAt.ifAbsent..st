accessing
scopedAttributeAt: anAttribute ifAbsent: aBlock
	^ self currentScopedAttributes
		ifNil: [aBlock value]
		ifNotNil: [:attributes |
			attributes
				at: anAttribute
				ifAbsent: aBlock]