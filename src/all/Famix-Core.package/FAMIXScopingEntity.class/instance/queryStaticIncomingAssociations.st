moosechef-queries-incoming
queryStaticIncomingAssociations

	^ self queryIncomingAccesses
		addAll: self queryIncomingReferences;
		addAll: self queryIncomingInheritances;
		yourself
