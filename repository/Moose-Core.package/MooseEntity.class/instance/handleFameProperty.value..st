properties
handleFameProperty: aSymbol value: anObject
	
	| value |
	value := (anObject isCollection and: [anObject size = 1]) ifTrue: [anObject anyOne] ifFalse: [anObject].
	self propertyNamed: aSymbol put: value