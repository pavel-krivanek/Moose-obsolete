matching
matchesAttributes: anAttributeDictionary
	attributeSpec keysAndValuesDo: [:specName :specValue |
		specValue
			ifNil: [
				"nil values mean the attribute has to be present and can have
				any value"
				(anAttributeDictionary includesKey: specName)
					ifFalse: [^ false]]
			ifNotNil: [
				(specValue isBlock
					ifTrue: [
						specValue value:
							(anAttributeDictionary
								at: specName
								ifAbsent: [^ false])]
					ifFalse: [
						specValue =
							(anAttributeDictionary
								at: specName
								ifAbsent: [^ false])])
							ifFalse: [^ false]]].
	^ true.