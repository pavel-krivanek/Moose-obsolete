*Famix-Smalltalk
isSharedVariable

	"^ self propertyNamed: #sharedVariable ifAbsent: [false] "
	^ self propertyNamed: #sharedVariable ifNil: [false]