moosequery-queries-incoming
queryIncomingDependencies
	"Associations + typeDeclaractions"

	^ self queryAllIncoming
		addAll: self queryIncomingTypeDeclarations;
		yourself