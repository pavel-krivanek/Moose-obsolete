accessing
superClasses
	"The superclasses of a Class, derived from its Generalizations."
	^ superClasses ifNil: [ superClasses := OrderedCollection new ]