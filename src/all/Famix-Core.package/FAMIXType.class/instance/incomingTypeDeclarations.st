moosequery-queries-incoming
incomingTypeDeclarations
	^ self structuresWithDeclaredType , self behavioursWithDeclaredType collect: [ :var | MooseChefTypeDeclarationAssociation newFrom: var to: self ]