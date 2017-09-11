moosequery-queries-outgoing
queryAllOutgoingAssociations
	^ self queryStaticOutgoingAssociations
		addAll: self queryAllOutgoingInvocations;
		yourself