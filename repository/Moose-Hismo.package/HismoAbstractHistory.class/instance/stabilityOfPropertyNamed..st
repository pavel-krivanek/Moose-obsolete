properties
stabilityOfPropertyNamed: aPropertyName
	
	| stab current previous |
	stab := 0.
	self size = 1 ifTrue: [ ^ 1.0 ].
	self
		versionsIndexFrom2Do:
			[:i | 
			current := (self versions at: i) propertyNamed: aPropertyName.
			previous := (self versions at: i - 1) propertyNamed: aPropertyName.
			current - previous = 0 ifTrue: [stab := stab + 1]].
	^stab / (self size - 1) * 100 asFloat