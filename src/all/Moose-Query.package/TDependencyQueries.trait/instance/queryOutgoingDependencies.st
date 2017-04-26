moosequery-queries-outgoing
queryOutgoingDependencies
	"Associations + typeDeclarations"

	^ self queryAllOutgoingAssociations
		addAll: self queryOutgoingTypeDeclarations;
		yourself