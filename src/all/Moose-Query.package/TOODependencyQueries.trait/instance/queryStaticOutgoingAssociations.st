moosequery - TOODependencyQueries
queryStaticOutgoingAssociations

	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		addAll: self queryOutgoingInheritances;
		yourself
