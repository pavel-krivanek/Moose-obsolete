accessing
subsettedProperties
	"The properties of which this Property is constrained to be a subset, if any."
	^ subsettedProperties ifNil: [ subsettedProperties := OrderedCollection new ]