public
mergeInterfaceTypes: interfaceTypeCollection assignmentTypes: assignmentTypesCollection
	"interfaceTypes is a set of trees of types reconstructed by looking at the interfaces.
	assignmentTypes is a set of trees of types reconstructed by looking at the assignments.
	The receiver takes these sets as input and needs to return one set of trees of types that combines both."

	^self subclassResponsibility