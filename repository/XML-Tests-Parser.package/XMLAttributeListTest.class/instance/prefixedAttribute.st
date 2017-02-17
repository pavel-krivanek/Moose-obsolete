accessing
prefixedAttribute
	^ prefixedAttribute
		ifNil: [prefixedAttribute := self newListItem copy prefix: 'prefix']