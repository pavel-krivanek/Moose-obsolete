properties
addedPropertyNamed: aPropertyName
	
	| totalAdded current previous |
	totalAdded := 0.
	self
		versionsIndexFrom2Do:
			[:i | 
			current := (self versions at: i) propertyNamed: aPropertyName.
			previous := (self versions at: i - 1) propertyNamed: aPropertyName.
			current - previous > 0
				ifTrue: [totalAdded := totalAdded + (current - previous) abs]].
	^totalAdded