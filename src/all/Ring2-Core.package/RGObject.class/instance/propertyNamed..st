properties
propertyNamed: propertyName 
	
	^ self
		propertyNamed: propertyName
		ifAbsent: [ nil ]