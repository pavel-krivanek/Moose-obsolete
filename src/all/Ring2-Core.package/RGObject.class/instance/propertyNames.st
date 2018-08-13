properties
propertyNames
	
	self hasProperties
		ifFalse:[ ^ OrderedCollection new ].
	^ properties keys