properties
changeSizeFromLastVersionPropertyNamed: aPropertyName
	
	| current previous |
	self previousVersion ifNil: [^0].
	current := self propertyNamed: aPropertyName.
	previous := self previousVersion propertyNamed: aPropertyName.
	^current - previous