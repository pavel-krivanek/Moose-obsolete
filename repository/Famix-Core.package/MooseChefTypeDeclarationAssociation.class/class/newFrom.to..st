instance creation
newFrom: varOrBehavior to: aType
	"some syntactic sugar"

	^ self new
		from: varOrBehavior ;
		to: aType ;
		yourself