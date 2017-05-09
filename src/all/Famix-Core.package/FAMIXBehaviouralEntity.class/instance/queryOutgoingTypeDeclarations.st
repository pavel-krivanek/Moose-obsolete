moosequery-queries-outgoing
queryOutgoingTypeDeclarations

	"TypeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type.
	The typeDeclaration objects are created here because they don't exist in Famix
	 Here we are looking for all the types used in declaration of local variables, parameters or as the return type of the receiver."

	| assocs |

	assocs := ((self localVariables , self parameters) select: [:var | var declaredType notNil])
					collectAsSet: [:var | MooseChefTypeDeclarationAssociation newFrom: var to: var declaredType ].
	self declaredType notNil ifTrue: [assocs add: (MooseChefTypeDeclarationAssociation newFrom: self to: self declaredType)].

	^ self createOutgoingQueryResultWith: assocs.