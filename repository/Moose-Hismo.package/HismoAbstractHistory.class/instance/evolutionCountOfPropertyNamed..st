properties
evolutionCountOfPropertyNamed: aPropertyName
	
	| count current previous |
	count := 0.
	self
		versionsIndexFrom2Do:
			[:i | 
			current := (self versions at: i) propertyNamed: aPropertyName.
			previous := (self versions at: i - 1) propertyNamed: aPropertyName.
			current - previous ~= 0 ifTrue: [count := count + 1]].
	^count