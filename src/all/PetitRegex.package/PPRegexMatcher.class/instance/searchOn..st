searching
searchOn: anObject
	self
		matchesIn: anObject
		do: [ :match | ^ true ].
	^ false
	