moosechef-queries-incoming
queryIncomingTypeDeclarations

	"typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type.
	The typeDeclaration objects are created here because they don't exist in Famix
	 Here we are looking for all the variables with type the-receiver or all behaviour entities with return type the-receiver."

	^ self createIncomingQueryResultWith: ((self structuresWithDeclaredType , self behavioursWithDeclaredType)
												collect: [:var | MooseChefTypeDeclarationAssociation newFrom: var to: self ])
