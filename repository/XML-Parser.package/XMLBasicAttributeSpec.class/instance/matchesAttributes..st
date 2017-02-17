matching
matchesAttributes: aDictionary
	attributeSpec keysAndValuesDo: [:specName :specValue |
		specValue
			ifNil: [
				"nil values mean the attribute has to be present and can have
				any value"
				(aDictionary includesKey: specName)
					ifFalse: [^ false]]
			ifNotNil: [
				(specValue isBlock
					ifTrue: [
						specValue value: (aDictionary at: specName ifAbsent: [^ false])]
					ifFalse: [
						specValue = (aDictionary at: specName ifAbsent: [^ false])])
							ifFalse: [^ false]]].
	^ true.