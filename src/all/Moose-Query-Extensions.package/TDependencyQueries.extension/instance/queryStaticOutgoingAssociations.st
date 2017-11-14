*Moose-Query-Extensions
queryStaticOutgoingAssociations
	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		yourself