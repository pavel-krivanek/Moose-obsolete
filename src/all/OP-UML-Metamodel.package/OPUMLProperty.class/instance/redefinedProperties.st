accessing
redefinedProperties
	"The properties that are redefined by this property, if any."
	^ redefinedProperties ifNil: [ redefinedProperties := OrderedCollection new ]