moosequery-queries-outgoing
queryStaticOutgoingAssociations
	^ self queryOutgoingAccesses
		addAll: self queryOutgoingReferences;
		yourself