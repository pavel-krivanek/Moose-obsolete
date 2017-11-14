moosequery-queries-incoming
queryIncomingTypeDeclarations
	"This method should return the incoming type declarations that are not represented in FAMIX and that cannot be query by a generic algorithme.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ self createIncomingQueryResultWith: (self queryIncomingTypeDeclarationsIn: OrderedCollection new) asSet