*Moose-Query-Extensions
queryStaticIncomingAssociations
	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		yourself