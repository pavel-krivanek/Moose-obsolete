moosequery-queries-incoming
queryIncomingDependencies
	"Associations + typeDeclaractions"

	^ self queryAllIncomingAssociations
		addAll: self queryIncomingTypeDeclarations;
		yourself