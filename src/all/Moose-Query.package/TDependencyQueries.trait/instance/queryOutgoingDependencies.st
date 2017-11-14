moosequery-queries-outgoing
queryOutgoingDependencies
	"Associations + typeDeclarations"

	^ self queryAllOutgoing
		addAll: self queryOutgoingTypeDeclarations;
		yourself