moosequery-queries-incoming
queryStaticIncomingAssociations
	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		yourself