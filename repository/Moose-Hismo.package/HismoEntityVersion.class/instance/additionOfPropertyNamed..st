properties
additionOfPropertyNamed: aPropertyName
	
	| current previous |
	self previousVersion ifNil: [^0].
	current := self propertyNamed: aPropertyName.
	previous := self previousVersion propertyNamed: aPropertyName.
	^0 max: current - previous