converting
convertColumnAsInteger: integerOrString
	"Convert a column as integers"
	self assert: [ integerOrString isCollection not ] description: 'Provide an integer or a string as argument please'.
	^ self convertColumnsAsInteger: (Array with: (self convertFromNameToIndexIfNecessary: integerOrString))