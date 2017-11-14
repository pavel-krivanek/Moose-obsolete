moosequery-queries-outgoing
queryOutgoingTypeDeclarations
	"This method should return the outgoing type declarations that are not represented in FAMIX and that cannot be query by a generic algorithme.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ self createOutgoingQueryResultWith: (self queryOutgoingTypeDeclarationsIn: OrderedCollection new) asSet