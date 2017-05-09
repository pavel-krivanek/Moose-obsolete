moosequery-queries-outgoing
queryOutgoingTypeDeclarations

	"typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type.
	The typeDeclaration objects are created here because they don't exist in Famix
	 Here we are looking for all the types used in declaration of attributes or in the methods of the receiver."

	| instanc |

	instanc := self createOutgoingQueryResultWith: 
					 ((self attributes select: [:var | var declaredType notNil])
							collectAsSet: [:var | MooseChefTypeDeclarationAssociation newFrom: var to: var declaredType]).
	self methods do: [:m | instanc addAll: m queryOutgoingTypeDeclarations].

	^ instanc.