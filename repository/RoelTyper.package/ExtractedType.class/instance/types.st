accessing
types
	^extractedTypes
		ifNil: [extractedTypes := self mergeTypes]
		ifNotNil: [extractedTypes]