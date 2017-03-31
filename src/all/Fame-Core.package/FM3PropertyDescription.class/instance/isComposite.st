accessing-query
isComposite
	<MSEProperty: #composite type: #Boolean>
	<derived>
	^ self hasOpposite and: [ self opposite isContainer ]