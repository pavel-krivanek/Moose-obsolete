properties
propertyNamed: propertyName 
	"Return the value of the property named propertyName, return nil if the property does not exist"

	^ self propertyNamed: propertyName ifNil: [ nil ]
