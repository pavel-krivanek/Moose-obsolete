moosequery - TOODependencyQueries
queryStaticIncomingAssociations

	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		addAll: self queryIncomingInheritances;
		yourself
