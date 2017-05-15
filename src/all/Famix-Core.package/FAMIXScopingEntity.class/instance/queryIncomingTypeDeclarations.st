moosequery-queries-incoming
queryIncomingTypeDeclarations

	"typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type.
	The typeDeclaration objects are created here because they don't exist in Famix
	 Here we are looking for all the variables with type the-receiver or all behaviour entities with return type the-receiver."

	| instanc |

	instanc := self classes
				flatCollect: [ :c | (c structuresWithDeclaredType , c behavioursWithDeclaredType)
					collectAsSet: [:var | MooseChefTypeDeclarationAssociation newFrom: var to: c ] ].
				
	^ self createIncomingQueryResultWith: instanc.
