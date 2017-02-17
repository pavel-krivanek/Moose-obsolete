properties
removedPropertyNamed: aPropertyName
	
	| totalRemoved current previous |
	totalRemoved := 0.
	self
		versionsIndexFrom2Do:
			[:i | 
			current := (self versions at: i) propertyNamed: aPropertyName.
			previous := (self versions at: i - 1) propertyNamed: aPropertyName.
			current - previous < 0
				ifTrue: [totalRemoved := totalRemoved + (current - previous) abs]].
	^totalRemoved