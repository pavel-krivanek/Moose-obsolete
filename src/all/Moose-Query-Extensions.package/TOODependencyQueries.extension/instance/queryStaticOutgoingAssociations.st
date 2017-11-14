*Moose-Query-Extensions
queryStaticOutgoingAssociations

	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		addAll: self queryOutgoingInheritances;
		yourself
