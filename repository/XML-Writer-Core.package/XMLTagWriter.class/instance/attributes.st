accessing
attributes
	^ attributes ifNil: [attributes := OrderPreservingStringDictionary new]