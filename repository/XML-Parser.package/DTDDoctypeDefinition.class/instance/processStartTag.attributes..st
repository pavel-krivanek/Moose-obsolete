processing
processStartTag: anElement attributes: aDictionary
	self hasAttributeValidators
		ifFalse: [^ self].
	(self
		attributeValidatorsAt: anElement
		ifAbsent: [^ self])
		valuesDo: [:each | each processAttributes: aDictionary]