accessing
classes
	"Retrieves a collection of classes defined in the receiver and classes holding extension methods"
		
	^self definedClassesOnly, self extendedClasses 