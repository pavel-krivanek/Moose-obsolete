printing
printOn: aStream
	aStream nextPutAll: 'ExtractedType: '.
	self basicExtractedTypes
		ifNil: [self printInterfaceAndAssigmentsOn: aStream]
		ifNotNil: [self printTypesOn: aStream]