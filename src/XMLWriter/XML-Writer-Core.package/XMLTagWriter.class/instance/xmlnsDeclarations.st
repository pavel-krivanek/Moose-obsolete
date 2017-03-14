accessing
xmlnsDeclarations
	^ xmlnsDeclarations
		ifNil: [xmlnsDeclarations := OrderPreservingStringDictionary new: 5]